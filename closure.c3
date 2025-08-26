module closure;
import std::io;

tlocal void** temp_closure_ptr @private;

macro @on_stack(func, ...)
{
	assert(!temp_closure_ptr);
	var $OrigFnType = $typeof(func);

	const OFFSET = 1; // space for the original function
	void*[$vacount + OFFSET] dat;
	void** cl = &dat;
	$for var $i = 0; $i < $vacount; $i++:
		cl[$i + OFFSET] = &&($vaexpr[$i]);
	$endfor
	cl[0] = (void*)func;

	temp_closure_ptr = (void**)cl;
	return @generate_closure_call_func($typeof(func), OFFSET, $vasplat);
}

macro @new(Allocator alloc, func, ...)
{
	const OFFSET = 1; // space for the original function
	var cl_data = allocator::alloc_array(alloc, void*, $vacount + OFFSET);
	$for var $i = 0; $i < $vacount; $i++:
		$if $typeof($vaexpr[$i]).kindof != POINTER:
			$error "All data passed to closure::@new must be a pointer that is (ideally) heap allocated";
		$endif
		cl_data[$i + OFFSET] = (void*)$vaexpr[$i];
	$endfor
	cl_data[0] = (void*)func;

	temp_closure_ptr = cl_data;

	var f = @generate_closure_call_func($typeof(func), OFFSET, $vasplat);
	return (Closure {$typeof(f)}) {f, alloc, cl_data};
}

module closure::closure_struct {FnType};

struct Closure
{
	FnType func;
	Allocator alloc;
	void** data;
}

fn void Closure.free(&self)
{
	allocator::free(self.alloc, self.data);
}

