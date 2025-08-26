module closure;
import std::io;

macro @new($func, ...)
{
	var $OrigFnType = $typeof($func);

	const OFFSET = 2; // space for the exec function and the original function
	void*[$vacount + OFFSET] dat;
	var new = (Closure {$typefrom($OrigFnType.returns)})&dat;
	$for var $i = 0; $i < $vacount; $i++:
		new[$i + OFFSET] = &&($vaexpr[$i]);
	$endfor
	new[1] = (void*)$func;

	var $params = $OrigFnType.params;

	new[0] = (void*)@generate_closure($OrigFnType, OFFSET, $vasplat);

	return new;
}

import std::collections::map;
import std::collections::list;
// TODO: try to find some way to get this to work with a List {Closure {Type}} instead.
tlocal HashMap {uint, void**} closures;
// tlocal List {void**} closures_list;

macro @new_fn($func, ...)
{
	var cl = closure::@new($func, $vasplat);
	if (!closures.is_initialized()) closures.tinit();
	uint $hash = @str_hash(@sprintf("%s:%s:%s", $$FILEPATH, $$LINE, @rnd()));
	closures.set($hash, (void**)cl);
	// closures_list.push()
	return @generate_closure_call_func($typeof($func), $hash, $vasplat);
}

macro @new_alloc(Allocator alloc, $func, ...)
{
	var $OrigFnType = $typeof($func);

	const OFFSET = 3; // space for the exec function, the original function, and the allocator
	var new = (Closure {$typefrom($OrigFnType.returns)})allocator::new_array(alloc, void*, $vacount + OFFSET);
	$for var $i = 0; $i < $vacount; $i++:
		$if $typeof($vaexpr[$i]).kindof != POINTER:
			$error "All data passed to @new_alloc must be a pointer that is (ideally) heap allocated";
		$endif
		new[$i + OFFSET] = (void*)$vaexpr[$i];
	$endfor
	new[1] = (void*)$func;
	new[2] = allocator::new(alloc, Allocator);
	*(Allocator*)new[2] = alloc;

	new[0] = (void*)@generate_closure($OrigFnType, OFFSET, $vasplat);

	return new;
}

module closure::type {Type};

typedef Closure = void**;

module closure::type::evil_hack {Type1, Type2};

const char INIT = '\0';

macro Type1.exec(self, ...) => ((Type2)self[0])(self, $vasplat);
