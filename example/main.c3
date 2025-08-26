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
	IntFn add1 = closure_fn::@new(&add3, a, 2);
	io::printfn(" = %s", add1(3));
	a = 5;
	io::printfn(" = %s", add1(3));


	var calc_something @safeinfer = closure_fn::@new(fn void(int* a, IntFn add1)
	{
		*a += 1;
		io::printfn(" = %s", add1(1));
		return;
	}, &a, add1);

	calc_something();
	calc_something();

	add1 = closure_fn::@new(fn int(int a)
	{
		io::printfn("%s", a);
		return a;
	});
	calc_something();

	return 0;
}

