module main;
import closure;
import std::io;
import std::os::posix;
import libc;

fn int add3(int a, int b, int c)
{
	io::printfn("%s + %s + %s = %s", a, b, c, a + b + c);
	return a + b + c;
}

alias IntFn = fn int(int);
alias VoidFn = fn void();

fn void print_something(void* dat) @nostrip @extern("print_something")// @naked
{
	io::printn("abc");
	io::printfn("Hello from assembly: %p", dat);
}

fn void print_something_else(void* dat) @nostrip
{
	io::printfn("Hello Again!: %p", dat);
}

fn int print(String fmt, int i)
{
	io::printfn(fmt, i);
	return 0;
}

fn int main(String[] args)
{
	closures::init()!!;
	defer closures::deinit();

	IntFn f;
	for (int i = 0; i < 10; i++)
	{
		IntFn f1 = closures::create(tmem, &add3, @tclone(i), &&2);
		if (i == 0) f = f1;
		io::printfn("f(1): %s, f1(1): %s", f(1), f1(1));
	}
	// print_something() @noinline;
//	io::printfn("In main!");
//	code_len = 2;

//	io::printfn("code ptr: %s, code len: %s, code_offset: %s, code_arg_offset: %s, code_func_offset: %s", code_ptr, code_len, code_offset, code_arg_offset, code_func_offset);
	// It's probably a bad idea to map a new page for each closure, I should make sure to reuse them
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

