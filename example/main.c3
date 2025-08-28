module main;
import closures @public;
import std::io;
import std::atomic;
import std::thread;

fn int add3(int a, int b, int c)
{
	// io::printfn("%s + %s + %s = %s", a, b, c, a + b + c);
	return a + b + c;
}

alias IntFn = fn int(int);
alias VoidFn = fn void();

// TODO: this is two slightly different bugs. one with `movl [c], $eax` and one with `movl c, $eax;`
/*fn int test1(int, int) @nostrip
{
	int a, b;
	/*asm
	{
		movl $eax, [$rbp - 4];
		movl a, $eax;
		movl $eax, [$rbp - 8];
		movl b, $eax;
	}*/
	/*io::printfn("a: %p, b: %p", &a, &b);
	io::printfn("a: %s, b: %s", a, b);*/
	// asm("ret");
	a = 123;
	defer
	{
		int c;
		asm
		{
			movl [c], $eax;
		};
		io::printfn("returned %s", c);
	}
	return self(a);// @noinline;
/*	asm
	(`
		popq %r11;
		jmpq *%r11;
	`);*/
}*/

fn int self(int a) => a;

alias IntString = fn String(int);
// TODO: write down issues/wants with inline assembly blocks (and strings) and make an issue for them. trying to rewrite the current assembly string in an assembly block should give a good idea.
//       1: be able to take the address of labels
//       2: be able to take the address of local variables
//       3: more instructions (jmp, call, etc)
fn int main(String[] args)
{
	closures::init()!!;
	defer closures::deinit();


	int a = 1;
	var fmt @safeinfer = closure::new(fn String(int a, usz b, String c) => string::tformat("a: %s, b: %s, c: %s", a, b, c), &a);
	defer closure::free(fmt);
	io::printn(fmt(1, "hello"));
	a = 4;
	var fmt1 @safeinfer = closure::new_copy(fmt, 1234);
	io::printn(fmt1("world!"));
	closure::free(fmt1);
	IntFn add1 = closure::new(&add3, &a, &&2);
	io::printn(add1(3));
	closure::free(add1);

	Atomic {bool} running;
	running.store(true);

	Atomic {bool} has_inc_a;
	has_inc_a.store(false);

	IntFn addA = closure::new(fn int(int a, int b) => a + b, &a);

	ThreadFn test_thread_fn = closure::new_copy(&test_thread_closure, addA, &running, &has_inc_a);
	defer closure::free(test_thread_fn);

	Thread test_thread;
	test_thread.create(test_thread_fn, null)!!;

	while (running.load())
	{
		if (!has_inc_a.load())
		{
			io::printfn("[Thread 1] incrementing a, a = %s", ++a);
			has_inc_a.store(true);
		}
	}
	(void)test_thread.join();

	return 0;
}


fn int test_thread_closure(IntFn addA, Atomic {bool}* running, Atomic {bool}* has_inc_a, void*)
{
	io::printfn("[Thread 2] started");
	while (running.load())
	{
		if (has_inc_a.load())
		{
			int a = addA(5);
			io::printfn("[Thread 2] a has been incremented, addA(5) = %s", a);
			if (a == 20) running.store(false);
			has_inc_a.store(false);
		}
	}
	io::printfn("[Thread 2] exiting");
	return 0;
}
