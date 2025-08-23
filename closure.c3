module closure {Type};
import std::io;

macro Closure @new($func, ...)
{
	var $OrigFnType = $typeof($func);

	const OFFSET = 2; // space for the exec function and the original function
	void*[$vacount + OFFSET] dat;
	Closure new = (Closure)&dat;
	$for var $i = 0; $i < $vacount; $i++:
		new[$i + OFFSET] = &&($vaexpr[$i]);
	$endfor
	new[1] = (void*)$func;

	var $params = $OrigFnType.params;

	new[0] = (void*)@generate_closure($OrigFnType, OFFSET, $vasplat);

	return new;
}

alias ClosureFn = fn Type(Closure self, args...);

typedef Closure = void**;

module closure::evil_hack {Type1, Type2};

const char INIT = '\0';

macro Type1.exec(self, ...) => ((Type2)self[0])(self, $vasplat);

