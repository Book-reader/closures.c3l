module closure;
import std::io;

tlocal void** temp_closure_ptr @private;
const OFFSET @private = 1;

<*
 Creates a closure, capturing all passed parameters by pointer and saving them on the stack.
 It is not thread-safe and cannot be returned from the function that creates it.
 @param func : "The function wrap in a closure"
 @params "The values of the first N parameters that should be wrapped by the closure"
 @return "The closure as a runnable function pointer"
*>
macro @on_stack(func, ...)
{
	void*[$vacount + OFFSET] data;
	return @create_inner({}, &data, func, 0, $vasplat);
}

<*
 Creates a closure, storing all pointers passed to it in an arry allocated on on `alloc`, then dereferencing the pointers when called.
 It is thread-safe as long as you only pass thread-safe pointers to it
 @param alloc : "The allocator to allocate the data on"
 @param func : "The function wrap in a closure"
 @params "The values of the first N parameters that should be wrapped by the closure"
 @return "A struct containing "
*>
macro @new(Allocator alloc, func, ...)
{
	var data = allocator::alloc_array(alloc, void*, $vacount + OFFSET);
	var f = @create_inner(alloc, data, func, 1, $vasplat);
	return (Closure {$typeof(f)}) {f, alloc, data, 0};
}

<*
 Creates a closure, copying all passed parameters by-value into an arry allocated on on `alloc`.
 It is thread-safe as long as you only access the data in a thread-safe manner
 @param alloc : "The allocator to allocate the data on"
 @param func : "The function wrap in a closure"
 @params "The values of the first N parameters that should be wrapped by the closure"
*>
macro @new_copy(Allocator alloc, func, ...)
{
	var data = allocator::alloc_array(alloc, void*, $vacount + OFFSET);
	var f = @create_inner(alloc, data, func, 2, $vasplat);
	return (Closure {$typeof(f)}) {f, alloc, data, $vacount};

}

macro @create_inner(Allocator alloc, void** data, func, char $action, ...) @private
{
	var $Func = $typeof(func);
	$if $Func.paramsof.len > 10:
		$error "This library does not support creating closures of functions with more than 10 parameters, modify this check and `generator.py` to change this";
	$endif
	assert(!temp_closure_ptr);
	$if $vacount > $Func.paramsof.len:
		$error @sprintf("Expected up to %s parameters but got %s", $Func.paramsof.len, $vacount);
	$endif
	$for var $i = 0; $i < $vacount; $i++:
		$switch $action:
		$case 0:
			$if $typeof($vaexpr[$i]).typeid != $Func.paramsof[$i].type:
				$error @sprintf("Expected param of type '%s' but got type '%s'", $Func.paramsof[$i].type.nameof, $typeof($vaexpr[$i]).nameof);
			$endif
			data[$i + OFFSET] = &&($vaexpr[$i]);
		$case 1:
			$if $typeof($vaexpr[$i]).kindof != POINTER:
				$error "All data passed to closure::@new must be a pointer that is (ideally) heap allocated";
			$endif
			$if $typeof($vaexpr[$i]).typeid != $typefrom($Func.paramsof[$i].type)*.typeid:
				$error @sprintf("Expected param of type '%s' but got type '%s'", $typefrom($Func.paramsof[$i].type)*.nameof, $typeof($vaexpr[$i]).nameof);
			$endif
			data[$i + OFFSET] = (void*)$vaexpr[$i];
		$case 2:
			$if $typeof($vaexpr[$i]).typeid != $Func.paramsof[$i].type:
				$error @sprintf("Expected param of type '%s' but got type '%s'", $Func.paramsof[$i].type.nameof, $typeof($vaexpr[$i]).nameof);
			$endif
			data[$i + OFFSET] = allocator::clone(alloc, $vaexpr[$i]);
		$default:
			$error "Invalid";
		$endswitch
	$endfor
	data[0] = (void*)func;

	temp_closure_ptr = data;

	return @generate_closure_call_func($typeof(func), OFFSET, $vasplat);
}

module closure::closure_struct {FnType};

struct Closure
{
	FnType func;
	Allocator alloc;
	void** data;
	usz copied_count;
}

fn void Closure.free(&self)
{
	foreach (dat : self.data[:self.copied_count])
	{
		allocator::free(self.alloc, dat);
	}
	allocator::free(self.alloc, self.data);
}

