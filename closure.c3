module closure {Type};
import std::io;

macro Closure @new(Allocator alloc, $func, ...)
{
	var $OrigFnType = $typeof($func);

	Closure new = (Closure)allocator::alloc_array(alloc, void*, $vacount + 3); // space for the exec function and the original function
	$for var $i = 0; $i < $vacount; $i++:
		new[$i + 3] = &&($vaexpr[$i]);
	$endfor
	new[1] = (void*)$func;
	new[2] = allocator::malloc(alloc, $sizeof(alloc));
	*(Allocator*)new[2] = alloc;

	var $params = $OrigFnType.params;

	new[0] = (void*)@generate_closure($OrigFnType, $vasplat);

	return new;
}

alias ClosureFn = fn Type(Closure self, args...);

typedef Closure = void**;

macro Closure.free(self)
{
	Allocator alloc = *(Allocator*)self[2];
	allocator::free(alloc, self[2]);
	allocator::free(alloc, (void*)self);
}


module closure::evil_hack {Type1, Type2};

const char INIT = '\0';

macro Type1.exec(self, ...) => ((Type2)self[0])(self, $vasplat);

