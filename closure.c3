module closures;

import std::io;
import std::atomic;

Atomic {bool} has_init;
void* code_ptr @builtin @private @nostrip @extern("code_ptr") @export;
uptr code_len @builtin @private @nostrip @extern("code_len") @export;
uptr code_offset @builtin @private @nostrip @extern("code_offset") @export;
uptr code_arg_offset @builtin @private @nostrip @extern("code_arg_offset") @export;
uptr code_func_offset @builtin @private @nostrip @extern("code_func_offset") @export;
uptr returnaddr_offset @builtin @private @nostrip @extern("returnaddr_offset") @export;

tlocal usz allocated_size @builtin @private;
tlocal ClosureData closures_data @builtin @private;
tlocal ClosureState[] used_closure_indexes @builtin @private;
tlocal usz max_closures @builtin @private;
tlocal usz used_closures @builtin @private;
tlocal Allocator closure_allocator @builtin @private;
tlocal usz closure_aligned_size @builtin @private;

const OsType[*] TESTED_OS = {LINUX};

<*
 Initialise the closure data
 Needs to be run on each thread that intends to create closures
 @require (void*)closures_data == null : "Closures are already initialised"
 @param closure_data_allocator : "The allocator used to copy parameters, if using `tmem` it will not be thread-safe"
 @param arena_size : "The size in bytes to allocate for closures to be stored in. Closure size depends on architecture but on x86 is ~70 bytes (excluding extra for alignment)"
                     "arena_size will be rounded to the nearest multiple of the page size (4096 on my computer), which ends up being enough for ~46 closures per 4096 byte page"
*>
fn void? init(Allocator closure_data_allocator = mem, usz arena_size = 4096)
{
	returnaddr_offset = 123456;
	$if !@contains(TESTED_OS, env::OS_TYPE):
		$echo @sprintf("WARNING: closures have not been tested to work on your operating system (%s), open an issue if things do not function properly", env::OS_TYPE);
	$endif
	$if $defined($eval("init_" +++ env::ARCH_TYPE.nameof)):
		if (!has_init.load())
		{
			has_init.store(true);
			$eval("init_" +++ env::ARCH_TYPE.nameof)();
		}
	$else
		$error @sprintf("Currently closures do not support architecture %s, feel free to open an issue/pr for your arch", env::ARCH_TYPE);
	$endif

	allocated_size = vm::aligned_alloc_size(arena_size);

	$if env::LINUX:
		closures_data = (ClosureData)_mmap(allocated_size)!;
	$else
		closures_data = (ClosureData)vm::alloc(allocated_size, ANY)!;
	$endif
	if ((uptr)closures_data % uptr.alignof != 0)
	{
		unreachable("closures_data was unaligned");
	}

	closure_aligned_size = code_len + uptr.alignof;
	closure_aligned_size += uptr.alignof - closure_aligned_size % uptr.alignof;
	max_closures = allocated_size / closure_aligned_size;

	// io::printfn("code_ptr: %p, code_len: %s, code_offset: %s, code_arg_offset: %s, code_func_offset: %s, returnaddr_offset: %s, closure_aligned_size: %s, max_closures: %s", code_ptr, code_len, code_offset, code_arg_offset, code_func_offset, returnaddr_offset, closure_aligned_size, max_closures);

	closure_allocator = closure_data_allocator;
	used_closure_indexes = allocator::alloc_array(closure_allocator, ClosureState, max_closures);

}

fn void deinit()
{
	foreach (i, cl : used_closure_indexes)
	{
		if (cl.used) closure::free(closures_data.get_closure_at_idx(i));
	}
	allocator::free(closure_allocator, used_closure_indexes);
	$if env::LINUX:
		_munmap((void*)closures_data, allocated_size);
	$else
		vm::release((void*)closures_data, allocated_size);
	$endif
	closures_data = null;
}

module closures::closure;
import closures @public;
import std::io;

<*
 Takes a function pointer and a list of N values, then returns a function the first N parameters removed and the values of those parameters set to the value
 It implicitly takes the values as pointers to alway have the latest version of the variable when called, but this means to pass a heap-allocated pointer to a value parameter you should pass `*ptr`
 @param func : "The function pointer to wrap in a closure"
 @require (void*)closures_data != null : "`closures::init` must be called before creating closures"
 @require used_closures < max_closures : "Ran out of space for closures, please free some or allocate a larger closure arena with `closures::init`"
*>
macro new(func, ...)
{
	return new_internal(func, false, $vasplat);
}

<*
 Takes a function pointer and a list of N values, copies the values, then returns a function the first N parameters removed and the values of those parameters set to the values passed
 @param func : "The param to wrap in a closure"
 @require (void*)closures_data != null : "`closures::init` must be called before creating closures"
 @require used_closures < max_closures : "Ran out of space for closures, please free some or allocate a larger closure arena with `closures::init`"
*>
macro new_copy(func, ...)
{
	return new_internal(func, true, $vasplat);
}

<*
 @require (void*)closures_data != null : "Attempted to free a closure on a thread with no closure data, note that closures must be freed by the thread that creates them"
 @require used_closures > 0 : "Attempted to free a closure when none were allocated"
 @require (uptr)func >= (uptr)closures_data && (uptr)func <= (uptr)closures_data + (closure_aligned_size * max_closures)
	: "Func must be a function pointer created by `closure::new` on the same thread it's freed on"
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
	void** args = closures_data.get_arg_at_idx(closure_idx);
	if (used_closure_indexes[closure_idx].copied)
	{
		for (usz i = OFFSET; args[i] != null; i++)
		{
			allocator::free(closure_allocator, args[i]);
		}
	}
	allocator::free(closure_allocator, args);

	$if env::COMPILER_SAFE_MODE:
		((char*)closures_data)[(closure_idx * closure_aligned_size):code_len] = 0xAA;
	$endif
	used_closure_indexes[closure_idx] = {};
}

const OFFSET = 1;
macro new_internal(func, bool $copy, ...)
{
	used_closures ++;
	// TODO: maybe handle overaligned types (if I even need to, might not since I only store pointers)? would probably make allocating them more complex though
	var $Func = $typeof(func);
	const MAX_PARAMS = 20;
	$if $Func.paramsof.len > MAX_PARAMS:
		$error @sprintf("Closures do not support functions with over %s parameters, modify this check and the python file to increase this limit.", MAX_PARAMS);
	$endif
	void** cl_data = allocator::alloc_array(closure_allocator, void*, $vacount + OFFSET + ($copy ? 1 : 0));

	$for var $i = 0; $i < $vacount; $i++:
		var $ParamType = $typefrom($Func.paramsof[$i].type);

		$if !$defined($ParamType x = $vaexpr[$i]):
			$error @sprintf("Expected param assignable to type '%s' but got '%s' (%s)", $ParamType.nameof, $stringify($vaexpr[$i]), $typeof($vaexpr[$i]).nameof);
		$endif

		$if $copy:
			cl_data[$i + OFFSET] = allocator::clone(closure_allocator, ($ParamType)$vaexpr[$i]);
		$else
			$if $defined(&$vaexpr[$i]):
				cl_data[$i + OFFSET] = &($ParamType)$vaexpr[$i];
			$else
				cl_data[$i + OFFSET] = &&($ParamType)$vaexpr[$i];
			$endif
		$endif
	$endfor
	cl_data[0] = (void*)func;
	$if $copy:
		cl_data[$vacount + OFFSET] = null;
	$endif

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

<* @require idx < max_closures *>
fn void ClosureData.set_data_at_idx(self, usz idx, void* data) => ((char*)self)[(idx * closure_aligned_size):code_len] = ((char*)data)[:code_len];

<* @require idx < max_closures *>
fn void ClosureData.set_func_at_idx(self, usz idx, void* func) => *(uptr*)(&self[(idx * closure_aligned_size) + code_func_offset]) = (uptr)func;

<* @require idx < max_closures *>
fn void ClosureData.set_arg_at_idx(self, usz idx, void* arg) => *(uptr*)(&self[(idx * closure_aligned_size) + code_arg_offset]) = (uptr)arg;

<* @require idx < max_closures *>
fn void* ClosureData.get_closure_at_idx(self, usz idx) => (void*)&closures_data[(idx * closure_aligned_size) + code_offset];

<* @require idx < max_closures *>
fn void* ClosureData.get_arg_at_idx(self, usz idx) => *(void**)&self[(idx * closure_aligned_size) + code_arg_offset];

macro init_X86_64()
{
asm(`
.intel_syntax
	push rax
	push rbx

	# First, load the address of "start:" into "code_ptr"
	lea rbx, .Lclosure_start
	mov  rax, [code_ptr@GOTPCREL + rip]
	mov [rax], rbx

	# Second, get the length of the assembly in bytes
	lea rax, .Lclosure_start
	lea rbx, .Lclosure_end
	sub rbx, rax
	mov rax, [code_len@GOTPCREL + rip]
	mov [rax], rbx

	# Third, store the offset of the code into code_offset
	lea rax, .Lclosure_start
	lea rbx, .Lclosure_code
	sub rbx, rax
	mov rax, [code_offset@GOTPCREL + rip]
	mov [rax], rbx

	# Fourth, store the offset of the stored parameter into code_arg_offset
	lea rax, .Lclosure_start
	lea rbx, .Lclosure_arg
	sub rbx, rax
	mov rax, [code_arg_offset@GOTPCREL + rip]
	mov [rax], rbx

	# Fifth, store the offset from the return location to the arg for use in the closure
	lea rax, .Lclosure_arg
	lea rbx, .Lclosure_return_loc
	sub rbx, rax
	mov rax, [returnaddr_offset@GOTPCREL + rip]
	mov [rax], rbx

	# Finally, store the offset of the stored function into code_func_offset and jump to end
	lea rax, .Lclosure_start
	lea rbx, .Lclosure_func
	sub rbx, rax
	mov rax, [code_func_offset@GOTPCREL + rip]
	mov [rax], rbx

	pop rbx
	pop rax
	jmp .Lclosure_end;

	.p2align 4
.Lclosure_start:
.Lclosure_arg:
	.quad 0
.Lclosure_func:
	.quad 0
.Lretn_addr: # The original return address of the function, saved here so I can replace it without messing with the stack and breaking things
	.quad 0
.Ltemp: # I could save ~20 bytes by not saving rax in .Ltemp, but I don't want to risk it breaking if the compiler decides to use it for something else when calling a closure returning void
	.quad 0
	.p2align 4
.Lclosure_code:
	pop qword ptr [.Lretn_addr + rip]
	mov [.Ltemp + rip], rax
	lea rax, [.Lclosure_return_loc + rip]
	push rax
	mov rax, [.Ltemp + rip]
	jmp [.Lclosure_func + rip]
.Lclosure_return_loc:
	push qword ptr [.Lretn_addr + rip]
	ret
.Lclosure_end:
`);
}

macro @contains($array, $val) @const
{
	$foreach $v : $array:
		$if ($v == $val): return true; $endif
	$endforeach
	return false;
}

<*
 A workaround for a stdlib mmap bug for until it is resolved
*>
module closures @if(env::LINUX) @private;
import std::os::posix;
import std::io;
import libc;

faultdef INIT_FAILED;

macro void*? _mmap(usz allocated_size)
{
	void* dat = posix::mmap(null, allocated_size, VirtualMemoryAccess.ANY.to_posix(), posix::MAP_PRIVATE | 0x20, -1, 0);
	if (dat == posix::MAP_FAILED)
	{
		io::eprintfn("error: %s", libc::errno());
		return INIT_FAILED?;
	}
	return dat;
}

macro _munmap(void* dat, usz allocated_size) => posix::munmap(dat, allocated_size);
