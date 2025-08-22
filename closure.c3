module closure {Type};
import std::io;

macro Closure @new(Allocator alloc, $func, ...)
{
	var $OrigFnType = $typeof($func);

	Closure new = (Closure)allocator::alloc_array(alloc, void*, $vacount + 4); // space for the exec function, the original function, the allocator, and null at the end
	$for var $i = 0; $i < $vacount; $i++:
		// var $ArgType = $typeof($vaexpr[$i]);
		// new[$i + 3] = allocator::malloc(alloc, $ArgType.sizeof);
		new[$i + 3] = &&($vaexpr[$i]);
	$endfor
	new[1] = (void*)$func;
	new[2] = allocator::malloc(alloc, $sizeof(alloc));
	*(Allocator*)new[2] = alloc;
	new[$vacount + 3] = null;

	var $params = $OrigFnType.params;
/*	var $NewFnType;
	$switch $OrigFnType.params.len - $vacount:
	$case 0:
		$NewFnType = $typeof(fn Type(Closure) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (c)
		{
			return (($OrigFnType)c[1])(*($typefrom($params[0])*)c[3], *($typefrom($params[1])*)c[4], a);
		};
	$case 1:
		$NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (c, a)
		{
			return (($OrigFnType)c[1])(*($typefrom($params[0])*)c[3], *($typefrom($params[1])*)c[4], a);
		};
	$case 2:
	$case 3:
	$case 4:
	$case 5:
	$case 6:
	$case 7:
	$default:
		$error @sprintf("unsupported remaining parameters: '%s'", $OrigFnType.params.len - $vacount);
	$endswitch*/

	new[0] = (void*)@generate_closure($OrigFnType, $vasplat);

	return new;
}

alias ClosureFn = fn Type(Closure self, args...);

typedef Closure = void**;

// macro Type Closure.exec(self, ...) => ((ClosureFn)self[0])(self, $vasplat);
/*fn void Closure.free(self)
{
	void** s = (void**)&self[2];
	while (s != null)
	{
		self[1]
	}
}*/
macro Closure.free(self)
{
	Allocator alloc = *(Allocator*)self[2];
	allocator::free(alloc, self[2]);
	allocator::free(alloc, (void*)self);
}


module closure::evil_hack {Type1, Type2};

const char INIT = '\0';

macro Type1.exec(self, ...) => ((Type2)self[0])(self, $vasplat);

