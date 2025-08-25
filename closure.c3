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

module closure::closure_fn {Type};
import closure;

import std::collections::map;
// TODO: try to find some way to get this to work with a List {Closure {Type}} instead.
tlocal HashMap {uint, Closure {Type}} closures;

macro @new($func, ...)
{
	var cl = closure::@new {Type} ($func, $vasplat);
	if (!closures.is_initialized()) closures.tinit();
	uint $hash = @str_hash(@sprintf("%s:%s", $$FILEPATH, $$LINE));
	closures.set($hash, cl);
	return @generate_closure_call_func($typeof($func), $hash, $vasplat);
}


module closure::evil_hack {Type1, Type2};

const char INIT = '\0';

macro Type1.exec(self, ...) => ((Type2)self[0])(self, $vasplat);
