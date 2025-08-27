module main;
import closure;
import std::io;
import std::os::posix;
import libc;

fn int add3(int a, int b, int c)
{
	io::printfn("%s + %s + %s", a, b, c);
	return a + b + c;
}

alias IntFn = fn int(int);
alias VoidFn = fn void();

tlocal void* code_ptr @extern("code_ptr__");
tlocal uptr code_len @extern("code_len__");

fn void print_something() @nostrip @extern("print_something")// @naked
{
	io::printfn("Hello from assembly!");
//	asm("ret;");
}

fn int main(String[] args)
{
	// print_something() @noinline;
	io::printfn("In main!");
	code_len = 2;
// TODO: calculate the size & address of the code between start and end, then between start and end put the instructions to execute a trampoline
asm(`
	pushq %rax;
	pushq %rbx;

	# First, load the address of "start:" into "code_ptr__"
	movq code_ptr__@GOTTPOFF(%rip), %rax;
	leaq .start.exec, %rbx;
	movq %rbx, %fs:(%rax)

	# Second, get the length of the assembly in bytes
	leaq .start.exec, %rax;
	leaq .end, %rbx;
	subq %rax, %rbx;

	movq code_len__@GOTTPOFF(%rip), %rax;
	movq %rbx, %fs:(%rax);
	jmp .end;

.start:
.start.data:
	.quad 0
.start.exec:
	# retq;
	# movq $$0xa1a1a1a1a1a1a1, %rax;
	#movq $$0, %rax;
	#jmp m16 %rax;
	# pushq .end1;
	# retq;
	# jmps .end1;
	# mov (%rsp), %rax;
	# sub print_something@PLT %rax
	leaq print_something, %rax;
	# movq $$0, %rax;
	# callq *%rax;
	# call print_something@PLT;
	# jmp *print_something;
	jmpq *%rax;
	retq;
	# jmp .end1;
.end:
	popq %rbx;
	popq %rax;
.end1:
	nop;
`);
	io::printfn("code ptr: %s, code len: %s", code_ptr, code_len);
	// VoidFn f = (VoidFn)code_ptr;
/*	char* dat = mem::new_array(char, code_len);
	dat[:code_len] = ((char*)code_ptr)[:code_len];
	assert (dat[:code_len] == ((char*)code_ptr)[:code_len]);
	// io::printfn("%s", dat[:code_len]);
	// char[] dat = ((char*)code_ptr)[:code_len];
	VoidFn f = (VoidFn)(void*)dat;
	io::printfn("new pointer: %p", f);
	f();*/

	// It's probably a bad idea to map a new page for each closure, I should make sure to reuse them
	usz allocated_size = vm::aligned_alloc_size(code_len);
	io::printfn("allocating %s bytes", allocated_size);
	void* fn_data = posix::mmap(null, allocated_size, VirtualMemoryAccess.EXECWRITE.to_posix(), posix::MAP_PRIVATE | 0x20, -1, 0);
	if (fn_data == posix::MAP_FAILED)
	{
		io::printfn("error: %s", libc::errno());
		return 1;
	}
	((char*)fn_data)[:code_len] = ((char*)code_ptr)[:code_len];
	VoidFn f = (VoidFn)fn_data;
	io::printfn("fn_data: %p, f: %p", fn_data, f);
	f();
	posix::munmap(fn_data, allocated_size);

	int a = 1;
	IntFn add1 = closure::@on_stack(&add3, a, 2);
	io::printfn(" = %s", add1(3));
	a = 5;
	io::printfn(" = %s", add1(3));

	var calc_something @safeinfer = closure::@on_stack(fn void(int* a, IntFn add1)
	{
		*a += 1;
		io::printfn(" = %s", add1(1));
		return;
	}, &a, add1);

	calc_something();
	calc_something();


	add1 = closure::@on_stack(fn int(int a)
	{
		io::printfn("%s", a);
		return a;
	});
	calc_something();

	// You should pass a pointer to heap allocated data otherwise it isn't thread safe
	Closure {IntFn} test = closure::@new(mem, &add3, &a, &&4);
	defer test.free();
	io::printfn("test: %s", test.func(6));

	int b = 5;
	// Copies 'b' onto tmem.
	// If passed a variable by-value it will *not* update if the variable is modified
	var other_test @safeinfer = closure::@new_copy(tmem, test.func, b).func;
	b = 1000;
	other_test();

	return 0;
}

