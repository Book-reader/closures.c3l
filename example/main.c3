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
	Closure {int} add1 = closure::@new {int}(mem, &add3, a, 2);
	defer add1.free();
	io::printfn(" = %s", add1.exec(3));
	a = 5;
	io::printfn(" = %s", add1.exec(3));


	// no calc_something.free() is needed since it uses tmem
	Closure {void} calc_something = closure::@new {void}(tmem, fn void(int* a, Closure {int} add1)
	{
		*a += 1;
		io::printfn(" = %s", add1.exec(1));
		return;
	}, &a, add1);

	defer
	{
		add1.free();
		add1 = closure::@new {int}(mem, fn int(int a)
		{
			io::printfn("%s", a);
			return a;
		});
		calc_something.exec();
	}

	calc_something.exec();
	calc_something.exec();
	return 0;
}

