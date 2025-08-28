module closures;

import std::io;
import std::os::posix;
import libc;

tlocal void* code_ptr @builtin @private @nostrip @extern("code_ptr") @export;
tlocal uptr code_len @builtin @private @nostrip @extern("code_len") @export;
tlocal uptr code_offset @builtin @private @nostrip @extern("code_offset") @export;
tlocal uptr code_arg_offset @builtin @private @nostrip @extern("code_arg_offset") @export;
tlocal uptr code_func_offset @builtin @private @nostrip @extern("code_func_offset") @export;
tlocal uptr returnaddr_offset @builtin @private @nostrip @extern("returnaddr_offset") @export;
tlocal usz allocated_size @builtin @private;
tlocal ClosureData closures_data @builtin @private;
tlocal ClosureState[] used_closure_indexes @builtin @private;
tlocal usz max_closures @builtin @private;
tlocal usz used_closures @builtin @private;
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

	allocated_size = vm::aligned_alloc_size(arena_size);

	closures_data = (ClosureData)posix::mmap(null, allocated_size, VirtualMemoryAccess.EXECWRITE.to_posix(), posix::MAP_PRIVATE | 0x20, -1, 0);
	if ((void*)closures_data == posix::MAP_FAILED)
	{
		io::printfn("error: %s", libc::errno());
		return INIT_FAILED?;
	}
	if ((uptr)closures_data % uptr.alignof != 0)
	{
		unreachable("closures_data was unaligned");
	}

	closure_aligned_size = code_len + uptr.alignof;
	closure_aligned_size += uptr.alignof - closure_aligned_size % uptr.alignof;
	max_closures = allocated_size / closure_aligned_size;

	closure_allocator = closure_data_allocator;
	used_closure_indexes = allocator::alloc_array(closure_allocator, ClosureState, max_closures);

}

fn void deinit()
{
	posix::munmap((void*)closures_data, allocated_size);
	allocator::free(closure_allocator, used_closure_indexes);
	closures_data = null;
}

module closures::closure;
import closures @public;
import std::io;

<*
 @require (void*)closures_data != null : "closures::init must be called before creating closures"
 @require used_closures < max_closures : "Created too many closures at once"
*>
macro new(func, ...)
{
	return new_internal(func, false, $vasplat);
}

<*
 @require (void*)closures_data != null : "closures::init must be called before creating closures"
 @require used_closures < max_closures : "Created too many closures at once"
*>
macro new_copy(func, ...)
{
	return new_internal(func, true, $vasplat);
}

<*
 @require (uptr)func >= (uptr)closures_data && (uptr)func <= (uptr)closures_data + (closure_aligned_size * max_closures)
	: "Func must be a function pointer created by closure::new"
*>
macro void free(func)
{
	used_closures --;

	uptr closure_start_addr = (uptr)func - code_offset;
	uptr closure_offset = closure_start_addr - (uptr)closures_data;
	assert(closure_offset % closure_aligned_size == 0);
	usz closure_idx = closure_offset / closure_aligned_size;
	assert(used_closure_indexes[closure_idx].used);

	// TODO: also free copied data if used_closure_indexes[closure_idx].copied == true
	allocator::free(closure_allocator, closures_data.get_arg_at_idx(closure_idx));

	$if env::COMPILER_SAFE_MODE:
		((char*)closures_data)[(closure_idx * closure_aligned_size):code_len] = 0xAA;
	$endif
	used_closure_indexes[closure_idx] = {};
}

macro new_internal(func, bool $copy, ...)
{
	used_closures ++;
	// TODO: maybe handle overaligned types (if I even need to, might not since I only handle pointers)? would probably make allocating them more complex though
	var $Func = $typeof(func);
	const OFFSET = 1;
	void** cl_data = allocator::alloc_array(closure_allocator, void*, $vacount + OFFSET);

	$for var $i = 0; $i < $vacount; $i++:
		var $ParamType = @select($copy, $typefrom($Func.paramsof[$i].type), $typefrom($Func.paramsof[$i].type)*);

		$if !$defined($ParamType x = $vaexpr[$i]):
			$error @sprintf("Expected param assignable to type '%s' but got '%s' (%s)", $ParamType.nameof, $stringify($vaexpr[$i]), $typeof($vaexpr[$i]).nameof);
		$endif

		$if $copy:
			cl_data[$i + OFFSET] = allocator::clone(closure_allocator, $vaexpr[$i]);
		$else
			(($ParamType*)cl_data)[$i + OFFSET] = $vaexpr[$i];
		$endif
	$endfor
	cl_data[0] = (void*)func;
	var $params = {};
	$foreach $param : $Func.paramsof:
		$params = $params +++ { $param.type};
	$endforeach

	var cl_func = @generate_closure($Func, OFFSET, $params, $vasplat);

	usz closure_idx = 0;
	while (used_closure_indexes[closure_idx].used) closure_idx ++;
	used_closure_indexes[closure_idx] = { .used = true, .copied = $copy };

	closures_data.set_data_at_idx(closure_idx, code_ptr);

	closures_data.set_func_at_idx(closure_idx, cl_func);
	closures_data.set_arg_at_idx(closure_idx, cl_data);

	return ($typeof(cl_func))closures_data.get_closure_at_idx(closure_idx);
}

module closures @private;
bitstruct ClosureState : char
{
	bool used;
	bool copied;
}

typedef ClosureData = char*;

<* @require idx <= max_closures *>
fn void ClosureData.set_data_at_idx(self, usz idx, void* data) => ((char*)self)[(idx * closure_aligned_size):code_len] = ((char*)data)[:code_len];

<* @require idx <= max_closures *>
fn void ClosureData.set_func_at_idx(self, usz idx, void* func) => *(uptr*)(&self[(idx * closure_aligned_size) + code_func_offset]) = (uptr)func;

<* @require idx <= max_closures *>
fn void ClosureData.set_arg_at_idx(self, usz idx, void* arg) => *(uptr*)(&self[(idx * closure_aligned_size) + code_arg_offset]) = (uptr)arg;

<* @require idx <= max_closures *>
fn void* ClosureData.get_closure_at_idx(self, usz idx) => (void*)&closures_data[(idx * closure_aligned_size) + code_offset];

<* @require idx <= max_closures *>
fn void* ClosureData.get_arg_at_idx(self, usz idx) => *(void**)&self[(idx * closure_aligned_size) + code_arg_offset];

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
