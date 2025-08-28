module closures::closure;
import closures @public;
macro @generate_closure($OrigFnType, $offset, $params, ...) @private
{
$switch $params.len:
$case 0:
	$switch $params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)() => unreachable());
		$NewFnType f = fn ()
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])();
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 1:
	$switch $params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)() => unreachable());
		$NewFnType f = fn ()
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], );
		};
	$case 1:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), ) => unreachable());
		$NewFnType f = fn (a, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(a, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 2:
	$switch $params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)() => unreachable());
		$NewFnType f = fn ()
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], );
		};
	$case 1:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), ) => unreachable());
		$NewFnType f = fn (a, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), ) => unreachable());
		$NewFnType f = fn (a, b, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(a, b, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 3:
	$switch $params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)() => unreachable());
		$NewFnType f = fn ()
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], );
		};
	$case 1:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), ) => unreachable());
		$NewFnType f = fn (a, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), ) => unreachable());
		$NewFnType f = fn (a, b, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], a, b, );
		};
	$case 3:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), ) => unreachable());
		$NewFnType f = fn (a, b, c, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(a, b, c, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 4:
	$switch $params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)() => unreachable());
		$NewFnType f = fn ()
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], );
		};
	$case 1:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), ) => unreachable());
		$NewFnType f = fn (a, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), ) => unreachable());
		$NewFnType f = fn (a, b, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], a, b, );
		};
	$case 3:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), ) => unreachable());
		$NewFnType f = fn (a, b, c, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], a, b, c, );
		};
	$case 4:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(a, b, c, d, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 5:
	$switch $params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)() => unreachable());
		$NewFnType f = fn ()
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], );
		};
	$case 1:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), ) => unreachable());
		$NewFnType f = fn (a, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), ) => unreachable());
		$NewFnType f = fn (a, b, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], a, b, );
		};
	$case 3:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), ) => unreachable());
		$NewFnType f = fn (a, b, c, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], a, b, c, );
		};
	$case 4:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], a, b, c, d, );
		};
	$case 5:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(a, b, c, d, e, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 6:
	$switch $params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)() => unreachable());
		$NewFnType f = fn ()
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], );
		};
	$case 1:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), ) => unreachable());
		$NewFnType f = fn (a, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), ) => unreachable());
		$NewFnType f = fn (a, b, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], a, b, );
		};
	$case 3:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), ) => unreachable());
		$NewFnType f = fn (a, b, c, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], a, b, c, );
		};
	$case 4:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], a, b, c, d, );
		};
	$case 5:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], a, b, c, d, e, );
		};
	$case 6:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(a, b, c, d, e, f, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 7:
	$switch $params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)() => unreachable());
		$NewFnType f = fn ()
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], );
		};
	$case 1:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), ) => unreachable());
		$NewFnType f = fn (a, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), ) => unreachable());
		$NewFnType f = fn (a, b, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], a, b, );
		};
	$case 3:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), ) => unreachable());
		$NewFnType f = fn (a, b, c, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], a, b, c, );
		};
	$case 4:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], a, b, c, d, );
		};
	$case 5:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], a, b, c, d, e, );
		};
	$case 6:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], a, b, c, d, e, f, );
		};
	$case 7:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(a, b, c, d, e, f, g, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 8:
	$switch $params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)() => unreachable());
		$NewFnType f = fn ()
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], );
		};
	$case 1:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), ) => unreachable());
		$NewFnType f = fn (a, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), ) => unreachable());
		$NewFnType f = fn (a, b, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], a, b, );
		};
	$case 3:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), ) => unreachable());
		$NewFnType f = fn (a, b, c, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], a, b, c, );
		};
	$case 4:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], a, b, c, d, );
		};
	$case 5:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], a, b, c, d, e, );
		};
	$case 6:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], a, b, c, d, e, f, );
		};
	$case 7:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], a, b, c, d, e, f, g, );
		};
	$case 8:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(a, b, c, d, e, f, g, h, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 9:
	$switch $params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)() => unreachable());
		$NewFnType f = fn ()
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], );
		};
	$case 1:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), ) => unreachable());
		$NewFnType f = fn (a, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), ) => unreachable());
		$NewFnType f = fn (a, b, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], a, b, );
		};
	$case 3:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), ) => unreachable());
		$NewFnType f = fn (a, b, c, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], a, b, c, );
		};
	$case 4:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], a, b, c, d, );
		};
	$case 5:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], a, b, c, d, e, );
		};
	$case 6:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], a, b, c, d, e, f, );
		};
	$case 7:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], a, b, c, d, e, f, g, );
		};
	$case 8:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], a, b, c, d, e, f, g, h, );
		};
	$case 9:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(a, b, c, d, e, f, g, h, i, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 10:
	$switch $params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)() => unreachable());
		$NewFnType f = fn ()
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], );
		};
	$case 1:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), ) => unreachable());
		$NewFnType f = fn (a, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), ) => unreachable());
		$NewFnType f = fn (a, b, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], a, b, );
		};
	$case 3:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), ) => unreachable());
		$NewFnType f = fn (a, b, c, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], a, b, c, );
		};
	$case 4:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], a, b, c, d, );
		};
	$case 5:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], a, b, c, d, e, );
		};
	$case 6:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], a, b, c, d, e, f, );
		};
	$case 7:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], a, b, c, d, e, f, g, );
		};
	$case 8:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], a, b, c, d, e, f, g, h, );
		};
	$case 9:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], a, b, c, d, e, f, g, h, i, );
		};
	$case 10:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(a, b, c, d, e, f, g, h, i, j, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 11:
	$switch $params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)() => unreachable());
		$NewFnType f = fn ()
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], );
		};
	$case 1:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), ) => unreachable());
		$NewFnType f = fn (a, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), ) => unreachable());
		$NewFnType f = fn (a, b, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], a, b, );
		};
	$case 3:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), ) => unreachable());
		$NewFnType f = fn (a, b, c, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], a, b, c, );
		};
	$case 4:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], a, b, c, d, );
		};
	$case 5:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], a, b, c, d, e, );
		};
	$case 6:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], a, b, c, d, e, f, );
		};
	$case 7:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], a, b, c, d, e, f, g, );
		};
	$case 8:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], a, b, c, d, e, f, g, h, );
		};
	$case 9:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], a, b, c, d, e, f, g, h, i, );
		};
	$case 10:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], a, b, c, d, e, f, g, h, i, j, );
		};
	$case 11:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(a, b, c, d, e, f, g, h, i, j, k, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 12:
	$switch $params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)() => unreachable());
		$NewFnType f = fn ()
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], );
		};
	$case 1:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), ) => unreachable());
		$NewFnType f = fn (a, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), ) => unreachable());
		$NewFnType f = fn (a, b, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], a, b, );
		};
	$case 3:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), ) => unreachable());
		$NewFnType f = fn (a, b, c, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], a, b, c, );
		};
	$case 4:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], a, b, c, d, );
		};
	$case 5:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], a, b, c, d, e, );
		};
	$case 6:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], a, b, c, d, e, f, );
		};
	$case 7:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], a, b, c, d, e, f, g, );
		};
	$case 8:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], a, b, c, d, e, f, g, h, );
		};
	$case 9:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], a, b, c, d, e, f, g, h, i, );
		};
	$case 10:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], a, b, c, d, e, f, g, h, i, j, );
		};
	$case 11:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], a, b, c, d, e, f, g, h, i, j, k, );
		};
	$case 12:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(a, b, c, d, e, f, g, h, i, j, k, l, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 13:
	$switch $params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)() => unreachable());
		$NewFnType f = fn ()
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], );
		};
	$case 1:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), ) => unreachable());
		$NewFnType f = fn (a, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), ) => unreachable());
		$NewFnType f = fn (a, b, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], a, b, );
		};
	$case 3:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), ) => unreachable());
		$NewFnType f = fn (a, b, c, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], a, b, c, );
		};
	$case 4:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], a, b, c, d, );
		};
	$case 5:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], a, b, c, d, e, );
		};
	$case 6:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], a, b, c, d, e, f, );
		};
	$case 7:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], a, b, c, d, e, f, g, );
		};
	$case 8:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], a, b, c, d, e, f, g, h, );
		};
	$case 9:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], a, b, c, d, e, f, g, h, i, );
		};
	$case 10:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], a, b, c, d, e, f, g, h, i, j, );
		};
	$case 11:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], a, b, c, d, e, f, g, h, i, j, k, );
		};
	$case 12:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, );
		};
	$case 13:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(a, b, c, d, e, f, g, h, i, j, k, l, m, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 14:
	$switch $params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)() => unreachable());
		$NewFnType f = fn ()
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], *($typefrom($params[13])*)args[13 + $offset], );
		};
	$case 1:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), ) => unreachable());
		$NewFnType f = fn (a, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), ) => unreachable());
		$NewFnType f = fn (a, b, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], a, b, );
		};
	$case 3:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), ) => unreachable());
		$NewFnType f = fn (a, b, c, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], a, b, c, );
		};
	$case 4:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], a, b, c, d, );
		};
	$case 5:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], a, b, c, d, e, );
		};
	$case 6:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], a, b, c, d, e, f, );
		};
	$case 7:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], a, b, c, d, e, f, g, );
		};
	$case 8:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], a, b, c, d, e, f, g, h, );
		};
	$case 9:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], a, b, c, d, e, f, g, h, i, );
		};
	$case 10:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], a, b, c, d, e, f, g, h, i, j, );
		};
	$case 11:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], a, b, c, d, e, f, g, h, i, j, k, );
		};
	$case 12:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, );
		};
	$case 13:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, m, );
		};
	$case 14:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), $typefrom($params[$vacount + 13]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, n, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(a, b, c, d, e, f, g, h, i, j, k, l, m, n, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 15:
	$switch $params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)() => unreachable());
		$NewFnType f = fn ()
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], *($typefrom($params[13])*)args[13 + $offset], *($typefrom($params[14])*)args[14 + $offset], );
		};
	$case 1:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), ) => unreachable());
		$NewFnType f = fn (a, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], *($typefrom($params[13])*)args[13 + $offset], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), ) => unreachable());
		$NewFnType f = fn (a, b, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], a, b, );
		};
	$case 3:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), ) => unreachable());
		$NewFnType f = fn (a, b, c, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], a, b, c, );
		};
	$case 4:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], a, b, c, d, );
		};
	$case 5:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], a, b, c, d, e, );
		};
	$case 6:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], a, b, c, d, e, f, );
		};
	$case 7:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], a, b, c, d, e, f, g, );
		};
	$case 8:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], a, b, c, d, e, f, g, h, );
		};
	$case 9:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], a, b, c, d, e, f, g, h, i, );
		};
	$case 10:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], a, b, c, d, e, f, g, h, i, j, );
		};
	$case 11:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], a, b, c, d, e, f, g, h, i, j, k, );
		};
	$case 12:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, );
		};
	$case 13:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, m, );
		};
	$case 14:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), $typefrom($params[$vacount + 13]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, n, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, m, n, );
		};
	$case 15:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), $typefrom($params[$vacount + 13]), $typefrom($params[$vacount + 14]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 16:
	$switch $params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)() => unreachable());
		$NewFnType f = fn ()
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], *($typefrom($params[13])*)args[13 + $offset], *($typefrom($params[14])*)args[14 + $offset], *($typefrom($params[15])*)args[15 + $offset], );
		};
	$case 1:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), ) => unreachable());
		$NewFnType f = fn (a, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], *($typefrom($params[13])*)args[13 + $offset], *($typefrom($params[14])*)args[14 + $offset], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), ) => unreachable());
		$NewFnType f = fn (a, b, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], *($typefrom($params[13])*)args[13 + $offset], a, b, );
		};
	$case 3:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), ) => unreachable());
		$NewFnType f = fn (a, b, c, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], a, b, c, );
		};
	$case 4:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], a, b, c, d, );
		};
	$case 5:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], a, b, c, d, e, );
		};
	$case 6:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], a, b, c, d, e, f, );
		};
	$case 7:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], a, b, c, d, e, f, g, );
		};
	$case 8:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], a, b, c, d, e, f, g, h, );
		};
	$case 9:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], a, b, c, d, e, f, g, h, i, );
		};
	$case 10:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], a, b, c, d, e, f, g, h, i, j, );
		};
	$case 11:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], a, b, c, d, e, f, g, h, i, j, k, );
		};
	$case 12:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, );
		};
	$case 13:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, m, );
		};
	$case 14:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), $typefrom($params[$vacount + 13]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, n, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, m, n, );
		};
	$case 15:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), $typefrom($params[$vacount + 13]), $typefrom($params[$vacount + 14]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, );
		};
	$case 16:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), $typefrom($params[$vacount + 13]), $typefrom($params[$vacount + 14]), $typefrom($params[$vacount + 15]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 17:
	$switch $params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)() => unreachable());
		$NewFnType f = fn ()
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], *($typefrom($params[13])*)args[13 + $offset], *($typefrom($params[14])*)args[14 + $offset], *($typefrom($params[15])*)args[15 + $offset], *($typefrom($params[16])*)args[16 + $offset], );
		};
	$case 1:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), ) => unreachable());
		$NewFnType f = fn (a, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], *($typefrom($params[13])*)args[13 + $offset], *($typefrom($params[14])*)args[14 + $offset], *($typefrom($params[15])*)args[15 + $offset], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), ) => unreachable());
		$NewFnType f = fn (a, b, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], *($typefrom($params[13])*)args[13 + $offset], *($typefrom($params[14])*)args[14 + $offset], a, b, );
		};
	$case 3:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), ) => unreachable());
		$NewFnType f = fn (a, b, c, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], *($typefrom($params[13])*)args[13 + $offset], a, b, c, );
		};
	$case 4:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], a, b, c, d, );
		};
	$case 5:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], a, b, c, d, e, );
		};
	$case 6:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], a, b, c, d, e, f, );
		};
	$case 7:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], a, b, c, d, e, f, g, );
		};
	$case 8:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], a, b, c, d, e, f, g, h, );
		};
	$case 9:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], a, b, c, d, e, f, g, h, i, );
		};
	$case 10:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], a, b, c, d, e, f, g, h, i, j, );
		};
	$case 11:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], a, b, c, d, e, f, g, h, i, j, k, );
		};
	$case 12:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, );
		};
	$case 13:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, m, );
		};
	$case 14:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), $typefrom($params[$vacount + 13]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, n, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, m, n, );
		};
	$case 15:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), $typefrom($params[$vacount + 13]), $typefrom($params[$vacount + 14]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, );
		};
	$case 16:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), $typefrom($params[$vacount + 13]), $typefrom($params[$vacount + 14]), $typefrom($params[$vacount + 15]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, );
		};
	$case 17:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), $typefrom($params[$vacount + 13]), $typefrom($params[$vacount + 14]), $typefrom($params[$vacount + 15]), $typefrom($params[$vacount + 16]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 18:
	$switch $params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)() => unreachable());
		$NewFnType f = fn ()
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], *($typefrom($params[13])*)args[13 + $offset], *($typefrom($params[14])*)args[14 + $offset], *($typefrom($params[15])*)args[15 + $offset], *($typefrom($params[16])*)args[16 + $offset], *($typefrom($params[17])*)args[17 + $offset], );
		};
	$case 1:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), ) => unreachable());
		$NewFnType f = fn (a, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], *($typefrom($params[13])*)args[13 + $offset], *($typefrom($params[14])*)args[14 + $offset], *($typefrom($params[15])*)args[15 + $offset], *($typefrom($params[16])*)args[16 + $offset], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), ) => unreachable());
		$NewFnType f = fn (a, b, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], *($typefrom($params[13])*)args[13 + $offset], *($typefrom($params[14])*)args[14 + $offset], *($typefrom($params[15])*)args[15 + $offset], a, b, );
		};
	$case 3:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), ) => unreachable());
		$NewFnType f = fn (a, b, c, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], *($typefrom($params[13])*)args[13 + $offset], *($typefrom($params[14])*)args[14 + $offset], a, b, c, );
		};
	$case 4:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], *($typefrom($params[13])*)args[13 + $offset], a, b, c, d, );
		};
	$case 5:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], a, b, c, d, e, );
		};
	$case 6:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], a, b, c, d, e, f, );
		};
	$case 7:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], a, b, c, d, e, f, g, );
		};
	$case 8:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], a, b, c, d, e, f, g, h, );
		};
	$case 9:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], a, b, c, d, e, f, g, h, i, );
		};
	$case 10:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], a, b, c, d, e, f, g, h, i, j, );
		};
	$case 11:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], a, b, c, d, e, f, g, h, i, j, k, );
		};
	$case 12:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, );
		};
	$case 13:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, m, );
		};
	$case 14:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), $typefrom($params[$vacount + 13]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, n, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, m, n, );
		};
	$case 15:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), $typefrom($params[$vacount + 13]), $typefrom($params[$vacount + 14]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, );
		};
	$case 16:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), $typefrom($params[$vacount + 13]), $typefrom($params[$vacount + 14]), $typefrom($params[$vacount + 15]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, );
		};
	$case 17:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), $typefrom($params[$vacount + 13]), $typefrom($params[$vacount + 14]), $typefrom($params[$vacount + 15]), $typefrom($params[$vacount + 16]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, );
		};
	$case 18:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), $typefrom($params[$vacount + 13]), $typefrom($params[$vacount + 14]), $typefrom($params[$vacount + 15]), $typefrom($params[$vacount + 16]), $typefrom($params[$vacount + 17]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 19:
	$switch $params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)() => unreachable());
		$NewFnType f = fn ()
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], *($typefrom($params[13])*)args[13 + $offset], *($typefrom($params[14])*)args[14 + $offset], *($typefrom($params[15])*)args[15 + $offset], *($typefrom($params[16])*)args[16 + $offset], *($typefrom($params[17])*)args[17 + $offset], *($typefrom($params[18])*)args[18 + $offset], );
		};
	$case 1:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), ) => unreachable());
		$NewFnType f = fn (a, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], *($typefrom($params[13])*)args[13 + $offset], *($typefrom($params[14])*)args[14 + $offset], *($typefrom($params[15])*)args[15 + $offset], *($typefrom($params[16])*)args[16 + $offset], *($typefrom($params[17])*)args[17 + $offset], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), ) => unreachable());
		$NewFnType f = fn (a, b, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], *($typefrom($params[13])*)args[13 + $offset], *($typefrom($params[14])*)args[14 + $offset], *($typefrom($params[15])*)args[15 + $offset], *($typefrom($params[16])*)args[16 + $offset], a, b, );
		};
	$case 3:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), ) => unreachable());
		$NewFnType f = fn (a, b, c, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], *($typefrom($params[13])*)args[13 + $offset], *($typefrom($params[14])*)args[14 + $offset], *($typefrom($params[15])*)args[15 + $offset], a, b, c, );
		};
	$case 4:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], *($typefrom($params[13])*)args[13 + $offset], *($typefrom($params[14])*)args[14 + $offset], a, b, c, d, );
		};
	$case 5:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], *($typefrom($params[13])*)args[13 + $offset], a, b, c, d, e, );
		};
	$case 6:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], a, b, c, d, e, f, );
		};
	$case 7:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], a, b, c, d, e, f, g, );
		};
	$case 8:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], a, b, c, d, e, f, g, h, );
		};
	$case 9:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], a, b, c, d, e, f, g, h, i, );
		};
	$case 10:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], a, b, c, d, e, f, g, h, i, j, );
		};
	$case 11:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], a, b, c, d, e, f, g, h, i, j, k, );
		};
	$case 12:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, );
		};
	$case 13:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, m, );
		};
	$case 14:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), $typefrom($params[$vacount + 13]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, n, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, m, n, );
		};
	$case 15:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), $typefrom($params[$vacount + 13]), $typefrom($params[$vacount + 14]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, );
		};
	$case 16:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), $typefrom($params[$vacount + 13]), $typefrom($params[$vacount + 14]), $typefrom($params[$vacount + 15]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, );
		};
	$case 17:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), $typefrom($params[$vacount + 13]), $typefrom($params[$vacount + 14]), $typefrom($params[$vacount + 15]), $typefrom($params[$vacount + 16]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, );
		};
	$case 18:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), $typefrom($params[$vacount + 13]), $typefrom($params[$vacount + 14]), $typefrom($params[$vacount + 15]), $typefrom($params[$vacount + 16]), $typefrom($params[$vacount + 17]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, );
		};
	$case 19:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), $typefrom($params[$vacount + 13]), $typefrom($params[$vacount + 14]), $typefrom($params[$vacount + 15]), $typefrom($params[$vacount + 16]), $typefrom($params[$vacount + 17]), $typefrom($params[$vacount + 18]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 20:
	$switch $params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)() => unreachable());
		$NewFnType f = fn ()
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], *($typefrom($params[13])*)args[13 + $offset], *($typefrom($params[14])*)args[14 + $offset], *($typefrom($params[15])*)args[15 + $offset], *($typefrom($params[16])*)args[16 + $offset], *($typefrom($params[17])*)args[17 + $offset], *($typefrom($params[18])*)args[18 + $offset], *($typefrom($params[19])*)args[19 + $offset], );
		};
	$case 1:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), ) => unreachable());
		$NewFnType f = fn (a, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], *($typefrom($params[13])*)args[13 + $offset], *($typefrom($params[14])*)args[14 + $offset], *($typefrom($params[15])*)args[15 + $offset], *($typefrom($params[16])*)args[16 + $offset], *($typefrom($params[17])*)args[17 + $offset], *($typefrom($params[18])*)args[18 + $offset], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), ) => unreachable());
		$NewFnType f = fn (a, b, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], *($typefrom($params[13])*)args[13 + $offset], *($typefrom($params[14])*)args[14 + $offset], *($typefrom($params[15])*)args[15 + $offset], *($typefrom($params[16])*)args[16 + $offset], *($typefrom($params[17])*)args[17 + $offset], a, b, );
		};
	$case 3:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), ) => unreachable());
		$NewFnType f = fn (a, b, c, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], *($typefrom($params[13])*)args[13 + $offset], *($typefrom($params[14])*)args[14 + $offset], *($typefrom($params[15])*)args[15 + $offset], *($typefrom($params[16])*)args[16 + $offset], a, b, c, );
		};
	$case 4:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], *($typefrom($params[13])*)args[13 + $offset], *($typefrom($params[14])*)args[14 + $offset], *($typefrom($params[15])*)args[15 + $offset], a, b, c, d, );
		};
	$case 5:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], *($typefrom($params[13])*)args[13 + $offset], *($typefrom($params[14])*)args[14 + $offset], a, b, c, d, e, );
		};
	$case 6:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], *($typefrom($params[13])*)args[13 + $offset], a, b, c, d, e, f, );
		};
	$case 7:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], *($typefrom($params[12])*)args[12 + $offset], a, b, c, d, e, f, g, );
		};
	$case 8:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], *($typefrom($params[11])*)args[11 + $offset], a, b, c, d, e, f, g, h, );
		};
	$case 9:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], *($typefrom($params[10])*)args[10 + $offset], a, b, c, d, e, f, g, h, i, );
		};
	$case 10:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], *($typefrom($params[9])*)args[9 + $offset], a, b, c, d, e, f, g, h, i, j, );
		};
	$case 11:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], *($typefrom($params[8])*)args[8 + $offset], a, b, c, d, e, f, g, h, i, j, k, );
		};
	$case 12:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], *($typefrom($params[7])*)args[7 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, );
		};
	$case 13:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], *($typefrom($params[6])*)args[6 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, m, );
		};
	$case 14:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), $typefrom($params[$vacount + 13]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, n, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], *($typefrom($params[5])*)args[5 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, m, n, );
		};
	$case 15:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), $typefrom($params[$vacount + 13]), $typefrom($params[$vacount + 14]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], *($typefrom($params[4])*)args[4 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, );
		};
	$case 16:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), $typefrom($params[$vacount + 13]), $typefrom($params[$vacount + 14]), $typefrom($params[$vacount + 15]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], *($typefrom($params[3])*)args[3 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, );
		};
	$case 17:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), $typefrom($params[$vacount + 13]), $typefrom($params[$vacount + 14]), $typefrom($params[$vacount + 15]), $typefrom($params[$vacount + 16]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], *($typefrom($params[2])*)args[2 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, );
		};
	$case 18:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), $typefrom($params[$vacount + 13]), $typefrom($params[$vacount + 14]), $typefrom($params[$vacount + 15]), $typefrom($params[$vacount + 16]), $typefrom($params[$vacount + 17]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], *($typefrom($params[1])*)args[1 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, );
		};
	$case 19:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), $typefrom($params[$vacount + 13]), $typefrom($params[$vacount + 14]), $typefrom($params[$vacount + 15]), $typefrom($params[$vacount + 16]), $typefrom($params[$vacount + 17]), $typefrom($params[$vacount + 18]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(*($typefrom($params[0])*)args[0 + $offset], a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, );
		};
	$case 20:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), $typefrom($params[$vacount + 10]), $typefrom($params[$vacount + 11]), $typefrom($params[$vacount + 12]), $typefrom($params[$vacount + 13]), $typefrom($params[$vacount + 14]), $typefrom($params[$vacount + 15]), $typefrom($params[$vacount + 16]), $typefrom($params[$vacount + 17]), $typefrom($params[$vacount + 18]), $typefrom($params[$vacount + 19]), ) => unreachable());
		$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, )
		{
			void** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);
			return (($OrigFnType)args[0])(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$endswitch
return f;
}
