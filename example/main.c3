module main;
import closures @public;
import std::io;
import std::atomic;
import std::thread;

fn int add3(int a, int b, int c)
{
	io::printfn("%s + %s + %s = %s", a, b, c, a + b + c);
	return a + b + c;
}

alias IntFn = fn int(int);
alias VoidFn = fn void();
alias IntString = fn String(int);

fn int main(String[] args)
{
	closures::init()!!;
	defer closures::deinit();

	var path_fn @safeinfer = closure::new_copy(fn bool?(Allocator alloc, Path path, bool is_dir, void*)
		{
			io::printfn("%s", path);
			if (is_dir) return false;
			if (@catch(path.extension()) || (path.extension()!! != "c3" && path.extension()!! != "c3i")) return false;
			String file_data = (String)file::load(tmem, path.path_string)!;
			return false;
		}, mem);
	defer closure::free(path_fn);
	path_fn(path::new(tmem, "./flake.nix")!!, true, null)!!;

	int a = 1;
	var fmt @safeinfer = closure::new(fn String(int a, usz b, String c) => string::tformat("a: %s, b: %s, c: %s", a, b, c), a);
	defer closure::free(fmt);
	io::printn(fmt(1, "hello"));
	a = 4;
	var fmt1 @safeinfer = closure::new_copy(fmt, 1234);
	io::printn(fmt1("world!"));
	closure::free(fmt1);

	IntFn add1 = closure::new(&add3, a, 2);
	io::printn(add1(3));
	closure::free(add1);

	Atomic {bool} running;
	running.store(true);

	Atomic {bool} has_inc_a;
	has_inc_a.store(false);

	IntFn addA = closure::new(fn int(int a, int b) => a + b, a);
	defer closure::free(addA);

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


fn int test_thread_closure(IntFn addA, Atomic {bool}* running, Atomic {bool}* has_inc_a, void*) => @pool_init(mem, 4096 * 10)
{
	io::printfn("[Thread 2] started");
	while (running.load())
	{
		if (has_inc_a.load())
		{
			int a = addA(5);
			io::printfn("[Thread 2] a has been incremented, addA(5) = %s", a);
			if (a == 20)
			{
				running.store(false);
				break;
			}
			has_inc_a.store(false);
		}
	}
	// io::printfn("[Thread 2] freeing closure allocated in Thread 1");
	// closure::free(addA);
	io::printfn("[Thread 2] exiting");
	return 0;
}
