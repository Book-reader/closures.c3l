module main;
import closure;
import std::io;

fn int add3(int a, int b, int c)
{
	io::printfn("%s + %s + %s", a, b, c);
	return a + b + c;
}

fn int main(String[] args)
{
	int a = 1;
	Closure {int} add1 = closure::@new {int}(&add3, a, 2);
	io::printfn(" = %s", add1.exec(3));
	a = 5;
	io::printfn(" = %s", add1.exec(3));


	Closure {void} calc_something = closure::@new {void}(fn void(int* a, Closure {int} add1)
	{
		*a += 1;
		io::printfn(" = %s", add1.exec(1));
		return;
	}, &a, add1);

	calc_something.exec();
	calc_something.exec();

	add1 = closure::@new {int}(fn int(int a)
	{
		io::printfn("%s", a);
		return a;
	});
	calc_something.exec();

	return 0;
}

