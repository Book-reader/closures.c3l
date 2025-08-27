module closures;

import std::io;
import std::os::posix;
import libc;

tlocal void* code_ptr @builtin @private @nostrip @extern("code_ptr");
tlocal uptr code_len @builtin @private @nostrip @extern("code_len");
tlocal uptr code_offset @builtin @private @nostrip @extern("code_offset");
tlocal uptr code_arg_offset @builtin @private @nostrip @extern("code_arg_offset");
tlocal uptr code_func_offset @builtin @private @nostrip @extern("code_func_offset");
tlocal uptr returnaddr_offset @builtin @private @nostrip @extern("returnaddr_offset") @export;
tlocal usz allocated_size @builtin @private;
tlocal usz closure_offset @builtin @private;
tlocal char* closures_data @builtin @private;
tlocal ClosureState[] used_closure_indexes @builtin @private;
tlocal usz max_closures @builtin @private;
tlocal Allocator closure_allocator @builtin @private;
tlocal usz closure_aligned_size @builtin @private;

faultdef INIT_FAILED;

const OsType[*] TESTED_OS = {LINUX};

fn void? init(Allocator closure_data_allocator = mem, usz arena_size = 4096)
{
	$if !array::@contains(TESTED_OS, env::OS_TYPE):
		$echo @sprintf("WARNING: closures have not been tested to work on your operating system (%s), open an issue if things do not function properly", env::OS_TYPE);
	$endif
	$if $defined($eval("init_" +++ env::ARCH_TYPE.nameof)):
		$eval("init_" +++ env::ARCH_TYPE.nameof)();
	$else
		$error @sprintf("Currently closures do not support architecture %s, feel free to open an issue/pr for your arch", env::ARCH_TYPE);
	$endif

	// io::printfn("return address offset is '%s'", returnaddr_offset);
	allocated_size = vm::aligned_alloc_size(arena_size);

	closures_data = posix::mmap(null, allocated_size, VirtualMemoryAccess.EXECWRITE.to_posix(), posix::MAP_PRIVATE | 0x20, -1, 0);
	if (closures_data == posix::MAP_FAILED)
	{
		io::printfn("error: %s", libc::errno());
		return INIT_FAILED?;
	}
	if ((uptr)closures_data % uptr.alignof != 0)
	{
		unreachable("closures_data was unaligned");
		// closure_offset = uptr.alignof - (uptr)closures_data % uptr.alignof;
	}

	closure_aligned_size = code_len + uptr.alignof;
	closure_aligned_size += uptr.alignof - closure_aligned_size % uptr.alignof;
	max_closures = allocated_size / closure_aligned_size;

	closure_allocator = closure_data_allocator;
	used_closure_indexes = allocator::alloc_array(closure_allocator, ClosureState, max_closures);

}

fn void deinit()
{
	posix::munmap(closures_data, allocated_size);
	allocator::free(closure_allocator, used_closure_indexes);
	closures_data = null;
}

module closures::closure;
import closures @public;
import std::io;

<*
 @require closures_data != null : "closures::init must be called before creating closures"
*>
macro new(func, ...)
{
	// TODO: maybe handle overaligned types (if I even need to, might not since I only handle pointers)? would probably make allocating them more complex though
	var $Func = $typeof(func);
	const OFFSET = 1;
	void** cl_data = allocator::alloc_array(closure_allocator, void*, $vacount + OFFSET);

	$for var $i = 0; $i < $vacount; $i++:
		$if $typeof($vaexpr[$i]).typeid != $typefrom($Func.paramsof[$i].type)*.typeid:
			$error @sprintf("Expected param of type '%s' but got type '%s'", $typefrom($Func.paramsof[$i].type)*.nameof, $typeof($vaexpr[$i]).nameof);
		$endif
		cl_data[$i + OFFSET] = (void*)$vaexpr[$i];
	$endfor
	cl_data[0] = (void*)func;
	var $params = {};
	$foreach $param : $Func.paramsof:
		$params = $params +++ { $param.type};
	$endforeach

	var cl_func = @generate_closure($Func, OFFSET, $params, $vasplat);


	// defer closure_offset += code_len + (uptr.alignof - code_len % uptr.alignof);
	usz closure_idx = 0;
	while (used_closure_indexes[closure_idx].used) closure_idx ++;
	used_closure_indexes[closure_idx].used = true;
	io::printfn("allocating closure at offset %s ending at offset %s. code_len: %s, aligned_len: %s", (closure_idx * closure_aligned_size), (closure_idx * closure_aligned_size) + code_len, code_len, closure_aligned_size);


	closures_data[(closure_idx * closure_aligned_size):code_len] = ((char*)code_ptr)[:code_len];

	*(uptr*)(&closures_data[(closure_idx * closure_aligned_size) + code_func_offset]) = (uptr)cl_func;
	*(uptr*)(&closures_data[(closure_idx * closure_aligned_size) + code_arg_offset]) = (uptr)cl_data;
	// io::printfn("Storing args at %p", (uptr*)(&closures_data[closure_offset + code_arg_offset]));
	var y = ($typeof(cl_func))(void*)&closures_data[(closure_idx * closure_aligned_size) + code_offset];
	// $echo $typeof(y).nameof;
	return y;
}

<*
 @require (uptr)func >= (uptr)closures_data && (uptr)func <= (uptr)closures_data + (closure_aligned_size * max_closures)
	: "Func must be a function pointer created by closure::new"
*>
macro void free(func)
{
	uptr closure_start_addr = (uptr)func - code_offset;
	uptr closure_offset = closure_start_addr - (uptr)closures_data;
	io::printfn("start: %s, aligned_size: %s, code_offset: %s", closure_start_addr, closure_aligned_size, code_offset);
	assert(closure_offset % closure_aligned_size == 0);
	usz closure_idx = closure_offset / closure_aligned_size;
	io::printfn("closure idx: %s", closure_idx);

	// TODO: also free copied data if used_closure_indexes[closure_idx].copied == true
	allocator::free(closure_allocator, *(void**)&closures_data[(closure_idx * closure_aligned_size) + code_arg_offset]);

	$if env::COMPILER_SAFE_MODE:
		closures_data[(closure_idx * closure_aligned_size):code_len] = 0xAA;
	$endif
	used_closure_indexes[closure_idx] = {};
}

bitstruct ClosureState : char
{
	bool used;
	bool copied;
}
// tlocal void** temp_closure_ptr @private;
// const OFFSET @private = 1;
/*
<*
 Creates a closure, capturing all passed parameters by pointer and saving them on the stack.
 It is not thread-safe and cannot be returned from the function that creates it.
 @param func : "The function wrap in a closure"
 @params "The values of the first N parameters that should be wrapped by the closure"
 @return "The closure as a runnable function pointer"
*>
macro @on_stack(func, ...)
{
	void*[$vacount + OFFSET] data;
	return @create_inner({}, &data, func, 0, $vasplat);
}

<*
 Creates a closure, storing all pointers passed to it in an arry allocated on on `alloc`, then dereferencing the pointers when called.
 It is thread-safe as long as you only pass thread-safe pointers to it
 @param alloc : "The allocator to allocate the data on"
 @param func : "The function wrap in a closure"
 @params "The values of the first N parameters that should be wrapped by the closure"
 @return "A struct containing "
*>
macro @new(Allocator alloc, func, ...)
{
	var data = allocator::alloc_array(alloc, void*, $vacount + OFFSET);
	var f = @create_inner(alloc, data, func, 1, $vasplat);
	return (Closure {$typeof(f)}) {f, alloc, data, 0};
}

<*
 Creates a closure, copying all passed parameters by-value into an arry allocated on on `alloc`.
 It is thread-safe as long as you only access the data in a thread-safe manner
 @param alloc : "The allocator to allocate the data on"
 @param func : "The function wrap in a closure"
 @params "The values of the first N parameters that should be wrapped by the closure"
*>
macro @new_copy(Allocator alloc, func, ...)
{
	var data = allocator::alloc_array(alloc, void*, $vacount + OFFSET);
	var f = @create_inner(alloc, data, func, 2, $vasplat);
	return (Closure {$typeof(f)}) {f, alloc, data, $vacount};

}

macro @create_inner(Allocator alloc, void** data, func, char $action, ...) @private
{
	var $Func = $typeof(func);
	$if $Func.paramsof.len > 10:
		$error "This library does not support creating closures of functions with more than 10 parameters, modify this check and `generator.py` to change this";
	$endif
	assert(!temp_closure_ptr);
	$if $vacount > $Func.paramsof.len:
		$error @sprintf("Expected up to %s parameters but got %s", $Func.paramsof.len, $vacount);
	$endif
	$for var $i = 0; $i < $vacount; $i++:
		$switch $action:
		$case 0:
			$if $typeof($vaexpr[$i]).typeid != $Func.paramsof[$i].type:
				$error @sprintf("Expected param of type '%s' but got type '%s'", $Func.paramsof[$i].type.nameof, $typeof($vaexpr[$i]).nameof);
			$endif
			data[$i + OFFSET] = &&($vaexpr[$i]);
		$case 1:
			$if $typeof($vaexpr[$i]).kindof != POINTER:
				$error "All data passed to closure::@new must be a pointer that is (ideally) heap allocated";
			$endif
			$if $typeof($vaexpr[$i]).typeid != $typefrom($Func.paramsof[$i].type)*.typeid:
				$error @sprintf("Expected param of type '%s' but got type '%s'", $typefrom($Func.paramsof[$i].type)*.nameof, $typeof($vaexpr[$i]).nameof);
			$endif
			data[$i + OFFSET] = (void*)$vaexpr[$i];
		$case 2:
			$if $typeof($vaexpr[$i]).typeid != $Func.paramsof[$i].type:
				$error @sprintf("Expected param of type '%s' but got type '%s'", $Func.paramsof[$i].type.nameof, $typeof($vaexpr[$i]).nameof);
			$endif
			data[$i + OFFSET] = allocator::clone(alloc, $vaexpr[$i]);
		$default:
			$error "Invalid";
		$endswitch
	$endfor
	data[0] = (void*)func;

	temp_closure_ptr = data;

	return @generate_closure_call_func($typeof(func), OFFSET, $vasplat);
}

module closure::closure_struct {FnType};

struct Closure
{
	FnType func;
	Allocator alloc;
	void** data;
	usz copied_count;
}

fn void Closure.free(&self)
{
	foreach (dat : self.data[:self.copied_count])
	{
		allocator::free(self.alloc, dat);
	}
	allocator::free(self.alloc, self.data);
}
*/
module closures @private;

macro init_X86_64()
{
asm(`
.intel_syntax
	push rax;
	push rbx;

	# First, load the address of "start:" into "code_ptr"
	lea rbx, .start;
	mov  rax, [code_ptr@GOTTPOFF + rip];
	mov fs:[rax], rbx;

	# Second, get the length of the assembly in bytes
	lea rax, .start;
	lea rbx, .end;
	sub rbx, rax;
	mov rax, [code_len@GOTTPOFF + rip];
	mov fs:[rax], rbx;

	# Third, store the offset of the code into code_offset
	lea rax, .start;
	lea rbx, .start.code;
	sub rbx, rax;
	mov rax, [code_offset@GOTTPOFF + rip];
	mov fs:[rax], rbx;

	# Fourth, store the offset of the stored parameter into code_arg_offset
	lea rax, .start;
	lea rbx, .start.arg;
	sub rbx, rax;
	mov rax, [code_arg_offset@GOTTPOFF + rip];
	mov fs:[rax], rbx;

	# Fifth, store the offset from the return location to the arg for use in the closure
	lea rax, .start.arg;
	lea rbx, .start.return_loc;
	sub rbx, rax;
	mov rax, [returnaddr_offset@GOTTPOFF + rip];
	mov fs:[rax], rbx;

	# Finally, store the offset of the stored function into code_func_offset and jump to end
	lea rax, .start;
	lea rbx, .start.func;
	sub rbx, rax;
	mov rax, [code_func_offset@GOTTPOFF + rip];
	mov fs:[rax], rbx;

	pop rbx;
	pop rax;
	jmp .end;

.start:
.start.arg:
	.quad 0
.start.func:
	.quad 0
	.p2align 4
.start.code:
	# Some boilerplate stuff for saving the stack pointer & registers, hopefully it's correct otherwise it'll just randomly break depending on what the compiler does with registers
	push rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov rbp, rsp
	 .cfi_def_cfa_register rbp
	# The actual function dispatch
	call [.start.func + rip];
.start.return_loc:
	pop rbp;
	.cfi_def_cfa rsp, 8
	ret;
.end:
`);
}

module std::core::array;

macro @contains($array, $val) @const
{
	$foreach $v : $array:
		$if ($v == $val): return true; $endif
	$endforeach
	return false;
}
