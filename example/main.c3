module main;
import closure;
import std::io;

fn int add3(int a, int b, int c)
{
	io::printfn("%s + %s + %s", a, b, c);
	return a + b + c;
}

alias IntFn = fn int(int);

fn int main(String[] args)
{
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

	// You should pass heap allocated data to this otherwise it isn't thread safe
	Closure {IntFn} test = closure::@new(mem, &add3, &a, &&4);
	defer test.free();
	io::printfn("test: %s", test.func(6));

	var other_test @safeinfer = closure::@new(tmem, test.func, &&5).func;
	other_test();

	return 0;
}

