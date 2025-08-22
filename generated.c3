module closure {Type};
macro @generate_closure($OrigFnType, ...) @private
{
var $params = $OrigFnType.params;
$switch $OrigFnType.params.len:
$case 0:
	$switch $OrigFnType.params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn Type(Closure) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure)
		{
			return (($OrigFnType)closure[1])();
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 1:
	$switch $OrigFnType.params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn Type(Closure) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], );
		};
	$case 1:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a)
		{
			return (($OrigFnType)closure[1])(a, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 2:
	$switch $OrigFnType.params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn Type(Closure) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], );
		};
	$case 1:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b)
		{
			return (($OrigFnType)closure[1])(a, b, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 3:
	$switch $OrigFnType.params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn Type(Closure) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], );
		};
	$case 1:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], a, b, );
		};
	$case 3:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c)
		{
			return (($OrigFnType)closure[1])(a, b, c, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 4:
	$switch $OrigFnType.params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn Type(Closure) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], *($typefrom($params[3])*)closure[3 + 3], );
		};
	$case 1:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], a, b, );
		};
	$case 3:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], a, b, c, );
		};
	$case 4:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c, d)
		{
			return (($OrigFnType)closure[1])(a, b, c, d, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 5:
	$switch $OrigFnType.params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn Type(Closure) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], *($typefrom($params[3])*)closure[3 + 3], *($typefrom($params[4])*)closure[3 + 4], );
		};
	$case 1:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], *($typefrom($params[3])*)closure[3 + 3], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], a, b, );
		};
	$case 3:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], a, b, c, );
		};
	$case 4:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c, d)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], a, b, c, d, );
		};
	$case 5:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c, d, e)
		{
			return (($OrigFnType)closure[1])(a, b, c, d, e, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 6:
	$switch $OrigFnType.params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn Type(Closure) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], *($typefrom($params[3])*)closure[3 + 3], *($typefrom($params[4])*)closure[3 + 4], *($typefrom($params[5])*)closure[3 + 5], );
		};
	$case 1:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], *($typefrom($params[3])*)closure[3 + 3], *($typefrom($params[4])*)closure[3 + 4], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], *($typefrom($params[3])*)closure[3 + 3], a, b, );
		};
	$case 3:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], a, b, c, );
		};
	$case 4:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c, d)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], a, b, c, d, );
		};
	$case 5:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c, d, e)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], a, b, c, d, e, );
		};
	$case 6:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c, d, e, f)
		{
			return (($OrigFnType)closure[1])(a, b, c, d, e, f, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 7:
	$switch $OrigFnType.params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn Type(Closure) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], *($typefrom($params[3])*)closure[3 + 3], *($typefrom($params[4])*)closure[3 + 4], *($typefrom($params[5])*)closure[3 + 5], *($typefrom($params[6])*)closure[3 + 6], );
		};
	$case 1:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], *($typefrom($params[3])*)closure[3 + 3], *($typefrom($params[4])*)closure[3 + 4], *($typefrom($params[5])*)closure[3 + 5], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], *($typefrom($params[3])*)closure[3 + 3], *($typefrom($params[4])*)closure[3 + 4], a, b, );
		};
	$case 3:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], *($typefrom($params[3])*)closure[3 + 3], a, b, c, );
		};
	$case 4:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c, d)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], a, b, c, d, );
		};
	$case 5:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c, d, e)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], a, b, c, d, e, );
		};
	$case 6:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c, d, e, f)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], a, b, c, d, e, f, );
		};
	$case 7:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c, d, e, f, g)
		{
			return (($OrigFnType)closure[1])(a, b, c, d, e, f, g, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 8:
	$switch $OrigFnType.params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn Type(Closure) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], *($typefrom($params[3])*)closure[3 + 3], *($typefrom($params[4])*)closure[3 + 4], *($typefrom($params[5])*)closure[3 + 5], *($typefrom($params[6])*)closure[3 + 6], *($typefrom($params[7])*)closure[3 + 7], );
		};
	$case 1:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], *($typefrom($params[3])*)closure[3 + 3], *($typefrom($params[4])*)closure[3 + 4], *($typefrom($params[5])*)closure[3 + 5], *($typefrom($params[6])*)closure[3 + 6], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], *($typefrom($params[3])*)closure[3 + 3], *($typefrom($params[4])*)closure[3 + 4], *($typefrom($params[5])*)closure[3 + 5], a, b, );
		};
	$case 3:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], *($typefrom($params[3])*)closure[3 + 3], *($typefrom($params[4])*)closure[3 + 4], a, b, c, );
		};
	$case 4:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c, d)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], *($typefrom($params[3])*)closure[3 + 3], a, b, c, d, );
		};
	$case 5:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c, d, e)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], a, b, c, d, e, );
		};
	$case 6:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c, d, e, f)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], a, b, c, d, e, f, );
		};
	$case 7:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c, d, e, f, g)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], a, b, c, d, e, f, g, );
		};
	$case 8:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c, d, e, f, g, h)
		{
			return (($OrigFnType)closure[1])(a, b, c, d, e, f, g, h, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 9:
	$switch $OrigFnType.params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn Type(Closure) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], *($typefrom($params[3])*)closure[3 + 3], *($typefrom($params[4])*)closure[3 + 4], *($typefrom($params[5])*)closure[3 + 5], *($typefrom($params[6])*)closure[3 + 6], *($typefrom($params[7])*)closure[3 + 7], *($typefrom($params[8])*)closure[3 + 8], );
		};
	$case 1:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], *($typefrom($params[3])*)closure[3 + 3], *($typefrom($params[4])*)closure[3 + 4], *($typefrom($params[5])*)closure[3 + 5], *($typefrom($params[6])*)closure[3 + 6], *($typefrom($params[7])*)closure[3 + 7], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], *($typefrom($params[3])*)closure[3 + 3], *($typefrom($params[4])*)closure[3 + 4], *($typefrom($params[5])*)closure[3 + 5], *($typefrom($params[6])*)closure[3 + 6], a, b, );
		};
	$case 3:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], *($typefrom($params[3])*)closure[3 + 3], *($typefrom($params[4])*)closure[3 + 4], *($typefrom($params[5])*)closure[3 + 5], a, b, c, );
		};
	$case 4:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c, d)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], *($typefrom($params[3])*)closure[3 + 3], *($typefrom($params[4])*)closure[3 + 4], a, b, c, d, );
		};
	$case 5:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c, d, e)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], *($typefrom($params[3])*)closure[3 + 3], a, b, c, d, e, );
		};
	$case 6:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c, d, e, f)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], a, b, c, d, e, f, );
		};
	$case 7:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c, d, e, f, g)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], a, b, c, d, e, f, g, );
		};
	$case 8:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c, d, e, f, g, h)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], a, b, c, d, e, f, g, h, );
		};
	$case 9:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c, d, e, f, g, h, i)
		{
			return (($OrigFnType)closure[1])(a, b, c, d, e, f, g, h, i, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 10:
	$switch $OrigFnType.params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn Type(Closure) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], *($typefrom($params[3])*)closure[3 + 3], *($typefrom($params[4])*)closure[3 + 4], *($typefrom($params[5])*)closure[3 + 5], *($typefrom($params[6])*)closure[3 + 6], *($typefrom($params[7])*)closure[3 + 7], *($typefrom($params[8])*)closure[3 + 8], *($typefrom($params[9])*)closure[3 + 9], );
		};
	$case 1:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], *($typefrom($params[3])*)closure[3 + 3], *($typefrom($params[4])*)closure[3 + 4], *($typefrom($params[5])*)closure[3 + 5], *($typefrom($params[6])*)closure[3 + 6], *($typefrom($params[7])*)closure[3 + 7], *($typefrom($params[8])*)closure[3 + 8], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], *($typefrom($params[3])*)closure[3 + 3], *($typefrom($params[4])*)closure[3 + 4], *($typefrom($params[5])*)closure[3 + 5], *($typefrom($params[6])*)closure[3 + 6], *($typefrom($params[7])*)closure[3 + 7], a, b, );
		};
	$case 3:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], *($typefrom($params[3])*)closure[3 + 3], *($typefrom($params[4])*)closure[3 + 4], *($typefrom($params[5])*)closure[3 + 5], *($typefrom($params[6])*)closure[3 + 6], a, b, c, );
		};
	$case 4:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c, d)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], *($typefrom($params[3])*)closure[3 + 3], *($typefrom($params[4])*)closure[3 + 4], *($typefrom($params[5])*)closure[3 + 5], a, b, c, d, );
		};
	$case 5:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c, d, e)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], *($typefrom($params[3])*)closure[3 + 3], *($typefrom($params[4])*)closure[3 + 4], a, b, c, d, e, );
		};
	$case 6:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c, d, e, f)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], *($typefrom($params[3])*)closure[3 + 3], a, b, c, d, e, f, );
		};
	$case 7:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c, d, e, f, g)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], *($typefrom($params[2])*)closure[3 + 2], a, b, c, d, e, f, g, );
		};
	$case 8:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c, d, e, f, g, h)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], *($typefrom($params[1])*)closure[3 + 1], a, b, c, d, e, f, g, h, );
		};
	$case 9:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c, d, e, f, g, h, i)
		{
			return (($OrigFnType)closure[1])(*($typefrom($params[0])*)closure[3 + 0], a, b, c, d, e, f, g, h, i, );
		};
	$case 10:
		var $NewFnType = $typeof(fn Type(Closure, $typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9])) => unreachable());
		evil_hack::INIT{Closure, $NewFnType};
		$NewFnType f = fn (closure, a, b, c, d, e, f, g, h, i, j)
		{
			return (($OrigFnType)closure[1])(a, b, c, d, e, f, g, h, i, j, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$endswitch
return f;
}
