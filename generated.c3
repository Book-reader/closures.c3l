module closure;
macro @generate_closure_call_func($OrigFnType, usz $offset, ...) @private
{
	var $params = {};
	$foreach $param : $OrigFnType.paramsof:
		$params = $params +++ {$param.type};
	$endforeach
	$switch $params.len:
	$case 0:
		$switch $params.len - $vacount:
		$case 0:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)() => unreachable());
			$NewFnType f = fn ()
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])();
			};
			(void)f();
			return f;
		$default:
			$error "Unsupported number of function parameters";
		$endswitch
	$case 1:
		$switch $params.len - $vacount:
		$case 0:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)() => unreachable());
			$NewFnType f = fn ()
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], );
			};
			(void)f();
			return f;
		$case 1:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), ) => unreachable());
			$NewFnType f = fn (a, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(a, );
			};
			(void)f({}, );
			return f;
		$default:
			$error "Unsupported number of function parameters";
		$endswitch
	$case 2:
		$switch $params.len - $vacount:
		$case 0:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)() => unreachable());
			$NewFnType f = fn ()
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], );
			};
			(void)f();
			return f;
		$case 1:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), ) => unreachable());
			$NewFnType f = fn (a, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], a, );
			};
			(void)f({}, );
			return f;
		$case 2:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), ) => unreachable());
			$NewFnType f = fn (a, b, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(a, b, );
			};
			(void)f({}, {}, );
			return f;
		$default:
			$error "Unsupported number of function parameters";
		$endswitch
	$case 3:
		$switch $params.len - $vacount:
		$case 0:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)() => unreachable());
			$NewFnType f = fn ()
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], );
			};
			(void)f();
			return f;
		$case 1:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), ) => unreachable());
			$NewFnType f = fn (a, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], a, );
			};
			(void)f({}, );
			return f;
		$case 2:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), ) => unreachable());
			$NewFnType f = fn (a, b, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], a, b, );
			};
			(void)f({}, {}, );
			return f;
		$case 3:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), ) => unreachable());
			$NewFnType f = fn (a, b, c, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(a, b, c, );
			};
			(void)f({}, {}, {}, );
			return f;
		$default:
			$error "Unsupported number of function parameters";
		$endswitch
	$case 4:
		$switch $params.len - $vacount:
		$case 0:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)() => unreachable());
			$NewFnType f = fn ()
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], );
			};
			(void)f();
			return f;
		$case 1:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), ) => unreachable());
			$NewFnType f = fn (a, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], a, );
			};
			(void)f({}, );
			return f;
		$case 2:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), ) => unreachable());
			$NewFnType f = fn (a, b, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], a, b, );
			};
			(void)f({}, {}, );
			return f;
		$case 3:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), ) => unreachable());
			$NewFnType f = fn (a, b, c, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], a, b, c, );
			};
			(void)f({}, {}, {}, );
			return f;
		$case 4:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), ) => unreachable());
			$NewFnType f = fn (a, b, c, d, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(a, b, c, d, );
			};
			(void)f({}, {}, {}, {}, );
			return f;
		$default:
			$error "Unsupported number of function parameters";
		$endswitch
	$case 5:
		$switch $params.len - $vacount:
		$case 0:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)() => unreachable());
			$NewFnType f = fn ()
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], );
			};
			(void)f();
			return f;
		$case 1:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), ) => unreachable());
			$NewFnType f = fn (a, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], a, );
			};
			(void)f({}, );
			return f;
		$case 2:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), ) => unreachable());
			$NewFnType f = fn (a, b, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], a, b, );
			};
			(void)f({}, {}, );
			return f;
		$case 3:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), ) => unreachable());
			$NewFnType f = fn (a, b, c, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], a, b, c, );
			};
			(void)f({}, {}, {}, );
			return f;
		$case 4:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), ) => unreachable());
			$NewFnType f = fn (a, b, c, d, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], a, b, c, d, );
			};
			(void)f({}, {}, {}, {}, );
			return f;
		$case 5:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), ) => unreachable());
			$NewFnType f = fn (a, b, c, d, e, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(a, b, c, d, e, );
			};
			(void)f({}, {}, {}, {}, {}, );
			return f;
		$default:
			$error "Unsupported number of function parameters";
		$endswitch
	$case 6:
		$switch $params.len - $vacount:
		$case 0:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)() => unreachable());
			$NewFnType f = fn ()
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], *($typefrom($params[5])*)closure_ptr[$offset + 5], );
			};
			(void)f();
			return f;
		$case 1:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), ) => unreachable());
			$NewFnType f = fn (a, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], a, );
			};
			(void)f({}, );
			return f;
		$case 2:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), ) => unreachable());
			$NewFnType f = fn (a, b, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], a, b, );
			};
			(void)f({}, {}, );
			return f;
		$case 3:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), ) => unreachable());
			$NewFnType f = fn (a, b, c, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], a, b, c, );
			};
			(void)f({}, {}, {}, );
			return f;
		$case 4:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), ) => unreachable());
			$NewFnType f = fn (a, b, c, d, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], a, b, c, d, );
			};
			(void)f({}, {}, {}, {}, );
			return f;
		$case 5:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), ) => unreachable());
			$NewFnType f = fn (a, b, c, d, e, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], a, b, c, d, e, );
			};
			(void)f({}, {}, {}, {}, {}, );
			return f;
		$case 6:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), ) => unreachable());
			$NewFnType f = fn (a, b, c, d, e, f, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(a, b, c, d, e, f, );
			};
			(void)f({}, {}, {}, {}, {}, {}, );
			return f;
		$default:
			$error "Unsupported number of function parameters";
		$endswitch
	$case 7:
		$switch $params.len - $vacount:
		$case 0:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)() => unreachable());
			$NewFnType f = fn ()
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], *($typefrom($params[5])*)closure_ptr[$offset + 5], *($typefrom($params[6])*)closure_ptr[$offset + 6], );
			};
			(void)f();
			return f;
		$case 1:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), ) => unreachable());
			$NewFnType f = fn (a, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], *($typefrom($params[5])*)closure_ptr[$offset + 5], a, );
			};
			(void)f({}, );
			return f;
		$case 2:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), ) => unreachable());
			$NewFnType f = fn (a, b, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], a, b, );
			};
			(void)f({}, {}, );
			return f;
		$case 3:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), ) => unreachable());
			$NewFnType f = fn (a, b, c, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], a, b, c, );
			};
			(void)f({}, {}, {}, );
			return f;
		$case 4:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), ) => unreachable());
			$NewFnType f = fn (a, b, c, d, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], a, b, c, d, );
			};
			(void)f({}, {}, {}, {}, );
			return f;
		$case 5:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), ) => unreachable());
			$NewFnType f = fn (a, b, c, d, e, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], a, b, c, d, e, );
			};
			(void)f({}, {}, {}, {}, {}, );
			return f;
		$case 6:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), ) => unreachable());
			$NewFnType f = fn (a, b, c, d, e, f, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], a, b, c, d, e, f, );
			};
			(void)f({}, {}, {}, {}, {}, {}, );
			return f;
		$case 7:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), ) => unreachable());
			$NewFnType f = fn (a, b, c, d, e, f, g, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(a, b, c, d, e, f, g, );
			};
			(void)f({}, {}, {}, {}, {}, {}, {}, );
			return f;
		$default:
			$error "Unsupported number of function parameters";
		$endswitch
	$case 8:
		$switch $params.len - $vacount:
		$case 0:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)() => unreachable());
			$NewFnType f = fn ()
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], *($typefrom($params[5])*)closure_ptr[$offset + 5], *($typefrom($params[6])*)closure_ptr[$offset + 6], *($typefrom($params[7])*)closure_ptr[$offset + 7], );
			};
			(void)f();
			return f;
		$case 1:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), ) => unreachable());
			$NewFnType f = fn (a, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], *($typefrom($params[5])*)closure_ptr[$offset + 5], *($typefrom($params[6])*)closure_ptr[$offset + 6], a, );
			};
			(void)f({}, );
			return f;
		$case 2:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), ) => unreachable());
			$NewFnType f = fn (a, b, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], *($typefrom($params[5])*)closure_ptr[$offset + 5], a, b, );
			};
			(void)f({}, {}, );
			return f;
		$case 3:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), ) => unreachable());
			$NewFnType f = fn (a, b, c, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], a, b, c, );
			};
			(void)f({}, {}, {}, );
			return f;
		$case 4:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), ) => unreachable());
			$NewFnType f = fn (a, b, c, d, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], a, b, c, d, );
			};
			(void)f({}, {}, {}, {}, );
			return f;
		$case 5:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), ) => unreachable());
			$NewFnType f = fn (a, b, c, d, e, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], a, b, c, d, e, );
			};
			(void)f({}, {}, {}, {}, {}, );
			return f;
		$case 6:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), ) => unreachable());
			$NewFnType f = fn (a, b, c, d, e, f, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], a, b, c, d, e, f, );
			};
			(void)f({}, {}, {}, {}, {}, {}, );
			return f;
		$case 7:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), ) => unreachable());
			$NewFnType f = fn (a, b, c, d, e, f, g, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], a, b, c, d, e, f, g, );
			};
			(void)f({}, {}, {}, {}, {}, {}, {}, );
			return f;
		$case 8:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), ) => unreachable());
			$NewFnType f = fn (a, b, c, d, e, f, g, h, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(a, b, c, d, e, f, g, h, );
			};
			(void)f({}, {}, {}, {}, {}, {}, {}, {}, );
			return f;
		$default:
			$error "Unsupported number of function parameters";
		$endswitch
	$case 9:
		$switch $params.len - $vacount:
		$case 0:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)() => unreachable());
			$NewFnType f = fn ()
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], *($typefrom($params[5])*)closure_ptr[$offset + 5], *($typefrom($params[6])*)closure_ptr[$offset + 6], *($typefrom($params[7])*)closure_ptr[$offset + 7], *($typefrom($params[8])*)closure_ptr[$offset + 8], );
			};
			(void)f();
			return f;
		$case 1:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), ) => unreachable());
			$NewFnType f = fn (a, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], *($typefrom($params[5])*)closure_ptr[$offset + 5], *($typefrom($params[6])*)closure_ptr[$offset + 6], *($typefrom($params[7])*)closure_ptr[$offset + 7], a, );
			};
			(void)f({}, );
			return f;
		$case 2:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), ) => unreachable());
			$NewFnType f = fn (a, b, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], *($typefrom($params[5])*)closure_ptr[$offset + 5], *($typefrom($params[6])*)closure_ptr[$offset + 6], a, b, );
			};
			(void)f({}, {}, );
			return f;
		$case 3:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), ) => unreachable());
			$NewFnType f = fn (a, b, c, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], *($typefrom($params[5])*)closure_ptr[$offset + 5], a, b, c, );
			};
			(void)f({}, {}, {}, );
			return f;
		$case 4:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), ) => unreachable());
			$NewFnType f = fn (a, b, c, d, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], a, b, c, d, );
			};
			(void)f({}, {}, {}, {}, );
			return f;
		$case 5:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), ) => unreachable());
			$NewFnType f = fn (a, b, c, d, e, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], a, b, c, d, e, );
			};
			(void)f({}, {}, {}, {}, {}, );
			return f;
		$case 6:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), ) => unreachable());
			$NewFnType f = fn (a, b, c, d, e, f, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], a, b, c, d, e, f, );
			};
			(void)f({}, {}, {}, {}, {}, {}, );
			return f;
		$case 7:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), ) => unreachable());
			$NewFnType f = fn (a, b, c, d, e, f, g, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], a, b, c, d, e, f, g, );
			};
			(void)f({}, {}, {}, {}, {}, {}, {}, );
			return f;
		$case 8:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), ) => unreachable());
			$NewFnType f = fn (a, b, c, d, e, f, g, h, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], a, b, c, d, e, f, g, h, );
			};
			(void)f({}, {}, {}, {}, {}, {}, {}, {}, );
			return f;
		$case 9:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), ) => unreachable());
			$NewFnType f = fn (a, b, c, d, e, f, g, h, i, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(a, b, c, d, e, f, g, h, i, );
			};
			(void)f({}, {}, {}, {}, {}, {}, {}, {}, {}, );
			return f;
		$default:
			$error "Unsupported number of function parameters";
		$endswitch
	$case 10:
		$switch $params.len - $vacount:
		$case 0:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)() => unreachable());
			$NewFnType f = fn ()
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], *($typefrom($params[5])*)closure_ptr[$offset + 5], *($typefrom($params[6])*)closure_ptr[$offset + 6], *($typefrom($params[7])*)closure_ptr[$offset + 7], *($typefrom($params[8])*)closure_ptr[$offset + 8], *($typefrom($params[9])*)closure_ptr[$offset + 9], );
			};
			(void)f();
			return f;
		$case 1:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), ) => unreachable());
			$NewFnType f = fn (a, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], *($typefrom($params[5])*)closure_ptr[$offset + 5], *($typefrom($params[6])*)closure_ptr[$offset + 6], *($typefrom($params[7])*)closure_ptr[$offset + 7], *($typefrom($params[8])*)closure_ptr[$offset + 8], a, );
			};
			(void)f({}, );
			return f;
		$case 2:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), ) => unreachable());
			$NewFnType f = fn (a, b, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], *($typefrom($params[5])*)closure_ptr[$offset + 5], *($typefrom($params[6])*)closure_ptr[$offset + 6], *($typefrom($params[7])*)closure_ptr[$offset + 7], a, b, );
			};
			(void)f({}, {}, );
			return f;
		$case 3:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), ) => unreachable());
			$NewFnType f = fn (a, b, c, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], *($typefrom($params[5])*)closure_ptr[$offset + 5], *($typefrom($params[6])*)closure_ptr[$offset + 6], a, b, c, );
			};
			(void)f({}, {}, {}, );
			return f;
		$case 4:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), ) => unreachable());
			$NewFnType f = fn (a, b, c, d, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], *($typefrom($params[5])*)closure_ptr[$offset + 5], a, b, c, d, );
			};
			(void)f({}, {}, {}, {}, );
			return f;
		$case 5:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), ) => unreachable());
			$NewFnType f = fn (a, b, c, d, e, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], a, b, c, d, e, );
			};
			(void)f({}, {}, {}, {}, {}, );
			return f;
		$case 6:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), ) => unreachable());
			$NewFnType f = fn (a, b, c, d, e, f, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], a, b, c, d, e, f, );
			};
			(void)f({}, {}, {}, {}, {}, {}, );
			return f;
		$case 7:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), ) => unreachable());
			$NewFnType f = fn (a, b, c, d, e, f, g, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], a, b, c, d, e, f, g, );
			};
			(void)f({}, {}, {}, {}, {}, {}, {}, );
			return f;
		$case 8:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), ) => unreachable());
			$NewFnType f = fn (a, b, c, d, e, f, g, h, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], a, b, c, d, e, f, g, h, );
			};
			(void)f({}, {}, {}, {}, {}, {}, {}, {}, );
			return f;
		$case 9:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), ) => unreachable());
			$NewFnType f = fn (a, b, c, d, e, f, g, h, i, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], a, b, c, d, e, f, g, h, i, );
			};
			(void)f({}, {}, {}, {}, {}, {}, {}, {}, {}, );
			return f;
		$case 10:
			var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)($typefrom($params[$vacount + 0]), $typefrom($params[$vacount + 1]), $typefrom($params[$vacount + 2]), $typefrom($params[$vacount + 3]), $typefrom($params[$vacount + 4]), $typefrom($params[$vacount + 5]), $typefrom($params[$vacount + 6]), $typefrom($params[$vacount + 7]), $typefrom($params[$vacount + 8]), $typefrom($params[$vacount + 9]), ) => unreachable());
			$NewFnType f = fn (a, b, c, d, e, f, g, h, i, j, )
			{
				static void** closure_ptr;
				if (@unlikely(!closure_ptr))
				{
					assert(temp_closure_ptr);
					closure_ptr = temp_closure_ptr;
					temp_closure_ptr = null;
					$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(a, b, c, d, e, f, g, h, i, j, );
			};
			(void)f({}, {}, {}, {}, {}, {}, {}, {}, {}, {}, );
			return f;
		$default:
			$error "Unsupported number of function parameters";
		$endswitch
	$endswitch
}
macro @generate_closure($OrigFnType, $offset, $params, ...)@private
{
var $fn_params = $OrigFnType.params;
$switch $fn_params.len:
$case 0:
	$switch $fn_params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**) => unreachable());
		$NewFnType f = fn (args)
		{
			return (($OrigFnType)args[0])();
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 1:
	$switch $fn_params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**) => unreachable());
		$NewFnType f = fn (args)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], );
		};
	$case 1:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0])) => unreachable());
		$NewFnType f = fn (args, a)
		{
			return (($OrigFnType)args[0])(a, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 2:
	$switch $fn_params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**) => unreachable());
		$NewFnType f = fn (args)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], );
		};
	$case 1:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0])) => unreachable());
		$NewFnType f = fn (args, a)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1])) => unreachable());
		$NewFnType f = fn (args, a, b)
		{
			return (($OrigFnType)args[0])(a, b, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 3:
	$switch $fn_params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**) => unreachable());
		$NewFnType f = fn (args)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], );
		};
	$case 1:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0])) => unreachable());
		$NewFnType f = fn (args, a)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1])) => unreachable());
		$NewFnType f = fn (args, a, b)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], a, b, );
		};
	$case 3:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2])) => unreachable());
		$NewFnType f = fn (args, a, b, c)
		{
			return (($OrigFnType)args[0])(a, b, c, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 4:
	$switch $fn_params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**) => unreachable());
		$NewFnType f = fn (args)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], *($typefrom($params[3][0])*)&args[$offset + 3], );
		};
	$case 1:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0])) => unreachable());
		$NewFnType f = fn (args, a)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1])) => unreachable());
		$NewFnType f = fn (args, a, b)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], a, b, );
		};
	$case 3:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2])) => unreachable());
		$NewFnType f = fn (args, a, b, c)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], a, b, c, );
		};
	$case 4:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2]), $typefrom($fn_params[$vacount + 3])) => unreachable());
		$NewFnType f = fn (args, a, b, c, d)
		{
			return (($OrigFnType)args[0])(a, b, c, d, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 5:
	$switch $fn_params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**) => unreachable());
		$NewFnType f = fn (args)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], *($typefrom($params[3][0])*)&args[$offset + 3], *($typefrom($params[4][0])*)&args[$offset + 4], );
		};
	$case 1:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0])) => unreachable());
		$NewFnType f = fn (args, a)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], *($typefrom($params[3][0])*)&args[$offset + 3], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1])) => unreachable());
		$NewFnType f = fn (args, a, b)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], a, b, );
		};
	$case 3:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2])) => unreachable());
		$NewFnType f = fn (args, a, b, c)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], a, b, c, );
		};
	$case 4:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2]), $typefrom($fn_params[$vacount + 3])) => unreachable());
		$NewFnType f = fn (args, a, b, c, d)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], a, b, c, d, );
		};
	$case 5:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2]), $typefrom($fn_params[$vacount + 3]), $typefrom($fn_params[$vacount + 4])) => unreachable());
		$NewFnType f = fn (args, a, b, c, d, e)
		{
			return (($OrigFnType)args[0])(a, b, c, d, e, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 6:
	$switch $fn_params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**) => unreachable());
		$NewFnType f = fn (args)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], *($typefrom($params[3][0])*)&args[$offset + 3], *($typefrom($params[4][0])*)&args[$offset + 4], *($typefrom($params[5][0])*)&args[$offset + 5], );
		};
	$case 1:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0])) => unreachable());
		$NewFnType f = fn (args, a)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], *($typefrom($params[3][0])*)&args[$offset + 3], *($typefrom($params[4][0])*)&args[$offset + 4], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1])) => unreachable());
		$NewFnType f = fn (args, a, b)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], *($typefrom($params[3][0])*)&args[$offset + 3], a, b, );
		};
	$case 3:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2])) => unreachable());
		$NewFnType f = fn (args, a, b, c)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], a, b, c, );
		};
	$case 4:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2]), $typefrom($fn_params[$vacount + 3])) => unreachable());
		$NewFnType f = fn (args, a, b, c, d)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], a, b, c, d, );
		};
	$case 5:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2]), $typefrom($fn_params[$vacount + 3]), $typefrom($fn_params[$vacount + 4])) => unreachable());
		$NewFnType f = fn (args, a, b, c, d, e)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], a, b, c, d, e, );
		};
	$case 6:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2]), $typefrom($fn_params[$vacount + 3]), $typefrom($fn_params[$vacount + 4]), $typefrom($fn_params[$vacount + 5])) => unreachable());
		$NewFnType f = fn (args, a, b, c, d, e, f)
		{
			return (($OrigFnType)args[0])(a, b, c, d, e, f, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 7:
	$switch $fn_params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**) => unreachable());
		$NewFnType f = fn (args)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], *($typefrom($params[3][0])*)&args[$offset + 3], *($typefrom($params[4][0])*)&args[$offset + 4], *($typefrom($params[5][0])*)&args[$offset + 5], *($typefrom($params[6][0])*)&args[$offset + 6], );
		};
	$case 1:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0])) => unreachable());
		$NewFnType f = fn (args, a)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], *($typefrom($params[3][0])*)&args[$offset + 3], *($typefrom($params[4][0])*)&args[$offset + 4], *($typefrom($params[5][0])*)&args[$offset + 5], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1])) => unreachable());
		$NewFnType f = fn (args, a, b)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], *($typefrom($params[3][0])*)&args[$offset + 3], *($typefrom($params[4][0])*)&args[$offset + 4], a, b, );
		};
	$case 3:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2])) => unreachable());
		$NewFnType f = fn (args, a, b, c)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], *($typefrom($params[3][0])*)&args[$offset + 3], a, b, c, );
		};
	$case 4:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2]), $typefrom($fn_params[$vacount + 3])) => unreachable());
		$NewFnType f = fn (args, a, b, c, d)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], a, b, c, d, );
		};
	$case 5:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2]), $typefrom($fn_params[$vacount + 3]), $typefrom($fn_params[$vacount + 4])) => unreachable());
		$NewFnType f = fn (args, a, b, c, d, e)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], a, b, c, d, e, );
		};
	$case 6:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2]), $typefrom($fn_params[$vacount + 3]), $typefrom($fn_params[$vacount + 4]), $typefrom($fn_params[$vacount + 5])) => unreachable());
		$NewFnType f = fn (args, a, b, c, d, e, f)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], a, b, c, d, e, f, );
		};
	$case 7:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2]), $typefrom($fn_params[$vacount + 3]), $typefrom($fn_params[$vacount + 4]), $typefrom($fn_params[$vacount + 5]), $typefrom($fn_params[$vacount + 6])) => unreachable());
		$NewFnType f = fn (args, a, b, c, d, e, f, g)
		{
			return (($OrigFnType)args[0])(a, b, c, d, e, f, g, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 8:
	$switch $fn_params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**) => unreachable());
		$NewFnType f = fn (args)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], *($typefrom($params[3][0])*)&args[$offset + 3], *($typefrom($params[4][0])*)&args[$offset + 4], *($typefrom($params[5][0])*)&args[$offset + 5], *($typefrom($params[6][0])*)&args[$offset + 6], *($typefrom($params[7][0])*)&args[$offset + 7], );
		};
	$case 1:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0])) => unreachable());
		$NewFnType f = fn (args, a)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], *($typefrom($params[3][0])*)&args[$offset + 3], *($typefrom($params[4][0])*)&args[$offset + 4], *($typefrom($params[5][0])*)&args[$offset + 5], *($typefrom($params[6][0])*)&args[$offset + 6], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1])) => unreachable());
		$NewFnType f = fn (args, a, b)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], *($typefrom($params[3][0])*)&args[$offset + 3], *($typefrom($params[4][0])*)&args[$offset + 4], *($typefrom($params[5][0])*)&args[$offset + 5], a, b, );
		};
	$case 3:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2])) => unreachable());
		$NewFnType f = fn (args, a, b, c)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], *($typefrom($params[3][0])*)&args[$offset + 3], *($typefrom($params[4][0])*)&args[$offset + 4], a, b, c, );
		};
	$case 4:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2]), $typefrom($fn_params[$vacount + 3])) => unreachable());
		$NewFnType f = fn (args, a, b, c, d)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], *($typefrom($params[3][0])*)&args[$offset + 3], a, b, c, d, );
		};
	$case 5:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2]), $typefrom($fn_params[$vacount + 3]), $typefrom($fn_params[$vacount + 4])) => unreachable());
		$NewFnType f = fn (args, a, b, c, d, e)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], a, b, c, d, e, );
		};
	$case 6:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2]), $typefrom($fn_params[$vacount + 3]), $typefrom($fn_params[$vacount + 4]), $typefrom($fn_params[$vacount + 5])) => unreachable());
		$NewFnType f = fn (args, a, b, c, d, e, f)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], a, b, c, d, e, f, );
		};
	$case 7:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2]), $typefrom($fn_params[$vacount + 3]), $typefrom($fn_params[$vacount + 4]), $typefrom($fn_params[$vacount + 5]), $typefrom($fn_params[$vacount + 6])) => unreachable());
		$NewFnType f = fn (args, a, b, c, d, e, f, g)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], a, b, c, d, e, f, g, );
		};
	$case 8:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2]), $typefrom($fn_params[$vacount + 3]), $typefrom($fn_params[$vacount + 4]), $typefrom($fn_params[$vacount + 5]), $typefrom($fn_params[$vacount + 6]), $typefrom($fn_params[$vacount + 7])) => unreachable());
		$NewFnType f = fn (args, a, b, c, d, e, f, g, h)
		{
			return (($OrigFnType)args[0])(a, b, c, d, e, f, g, h, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 9:
	$switch $fn_params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**) => unreachable());
		$NewFnType f = fn (args)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], *($typefrom($params[3][0])*)&args[$offset + 3], *($typefrom($params[4][0])*)&args[$offset + 4], *($typefrom($params[5][0])*)&args[$offset + 5], *($typefrom($params[6][0])*)&args[$offset + 6], *($typefrom($params[7][0])*)&args[$offset + 7], *($typefrom($params[8][0])*)&args[$offset + 8], );
		};
	$case 1:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0])) => unreachable());
		$NewFnType f = fn (args, a)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], *($typefrom($params[3][0])*)&args[$offset + 3], *($typefrom($params[4][0])*)&args[$offset + 4], *($typefrom($params[5][0])*)&args[$offset + 5], *($typefrom($params[6][0])*)&args[$offset + 6], *($typefrom($params[7][0])*)&args[$offset + 7], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1])) => unreachable());
		$NewFnType f = fn (args, a, b)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], *($typefrom($params[3][0])*)&args[$offset + 3], *($typefrom($params[4][0])*)&args[$offset + 4], *($typefrom($params[5][0])*)&args[$offset + 5], *($typefrom($params[6][0])*)&args[$offset + 6], a, b, );
		};
	$case 3:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2])) => unreachable());
		$NewFnType f = fn (args, a, b, c)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], *($typefrom($params[3][0])*)&args[$offset + 3], *($typefrom($params[4][0])*)&args[$offset + 4], *($typefrom($params[5][0])*)&args[$offset + 5], a, b, c, );
		};
	$case 4:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2]), $typefrom($fn_params[$vacount + 3])) => unreachable());
		$NewFnType f = fn (args, a, b, c, d)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], *($typefrom($params[3][0])*)&args[$offset + 3], *($typefrom($params[4][0])*)&args[$offset + 4], a, b, c, d, );
		};
	$case 5:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2]), $typefrom($fn_params[$vacount + 3]), $typefrom($fn_params[$vacount + 4])) => unreachable());
		$NewFnType f = fn (args, a, b, c, d, e)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], *($typefrom($params[3][0])*)&args[$offset + 3], a, b, c, d, e, );
		};
	$case 6:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2]), $typefrom($fn_params[$vacount + 3]), $typefrom($fn_params[$vacount + 4]), $typefrom($fn_params[$vacount + 5])) => unreachable());
		$NewFnType f = fn (args, a, b, c, d, e, f)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], a, b, c, d, e, f, );
		};
	$case 7:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2]), $typefrom($fn_params[$vacount + 3]), $typefrom($fn_params[$vacount + 4]), $typefrom($fn_params[$vacount + 5]), $typefrom($fn_params[$vacount + 6])) => unreachable());
		$NewFnType f = fn (args, a, b, c, d, e, f, g)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], a, b, c, d, e, f, g, );
		};
	$case 8:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2]), $typefrom($fn_params[$vacount + 3]), $typefrom($fn_params[$vacount + 4]), $typefrom($fn_params[$vacount + 5]), $typefrom($fn_params[$vacount + 6]), $typefrom($fn_params[$vacount + 7])) => unreachable());
		$NewFnType f = fn (args, a, b, c, d, e, f, g, h)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], a, b, c, d, e, f, g, h, );
		};
	$case 9:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2]), $typefrom($fn_params[$vacount + 3]), $typefrom($fn_params[$vacount + 4]), $typefrom($fn_params[$vacount + 5]), $typefrom($fn_params[$vacount + 6]), $typefrom($fn_params[$vacount + 7]), $typefrom($fn_params[$vacount + 8])) => unreachable());
		$NewFnType f = fn (args, a, b, c, d, e, f, g, h, i)
		{
			return (($OrigFnType)args[0])(a, b, c, d, e, f, g, h, i, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$case 10:
	$switch $fn_params.len - $vacount:
	$case 0:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**) => unreachable());
		$NewFnType f = fn (args)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], *($typefrom($params[3][0])*)&args[$offset + 3], *($typefrom($params[4][0])*)&args[$offset + 4], *($typefrom($params[5][0])*)&args[$offset + 5], *($typefrom($params[6][0])*)&args[$offset + 6], *($typefrom($params[7][0])*)&args[$offset + 7], *($typefrom($params[8][0])*)&args[$offset + 8], *($typefrom($params[9][0])*)&args[$offset + 9], );
		};
	$case 1:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0])) => unreachable());
		$NewFnType f = fn (args, a)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], *($typefrom($params[3][0])*)&args[$offset + 3], *($typefrom($params[4][0])*)&args[$offset + 4], *($typefrom($params[5][0])*)&args[$offset + 5], *($typefrom($params[6][0])*)&args[$offset + 6], *($typefrom($params[7][0])*)&args[$offset + 7], *($typefrom($params[8][0])*)&args[$offset + 8], a, );
		};
	$case 2:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1])) => unreachable());
		$NewFnType f = fn (args, a, b)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], *($typefrom($params[3][0])*)&args[$offset + 3], *($typefrom($params[4][0])*)&args[$offset + 4], *($typefrom($params[5][0])*)&args[$offset + 5], *($typefrom($params[6][0])*)&args[$offset + 6], *($typefrom($params[7][0])*)&args[$offset + 7], a, b, );
		};
	$case 3:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2])) => unreachable());
		$NewFnType f = fn (args, a, b, c)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], *($typefrom($params[3][0])*)&args[$offset + 3], *($typefrom($params[4][0])*)&args[$offset + 4], *($typefrom($params[5][0])*)&args[$offset + 5], *($typefrom($params[6][0])*)&args[$offset + 6], a, b, c, );
		};
	$case 4:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2]), $typefrom($fn_params[$vacount + 3])) => unreachable());
		$NewFnType f = fn (args, a, b, c, d)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], *($typefrom($params[3][0])*)&args[$offset + 3], *($typefrom($params[4][0])*)&args[$offset + 4], *($typefrom($params[5][0])*)&args[$offset + 5], a, b, c, d, );
		};
	$case 5:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2]), $typefrom($fn_params[$vacount + 3]), $typefrom($fn_params[$vacount + 4])) => unreachable());
		$NewFnType f = fn (args, a, b, c, d, e)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], *($typefrom($params[3][0])*)&args[$offset + 3], *($typefrom($params[4][0])*)&args[$offset + 4], a, b, c, d, e, );
		};
	$case 6:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2]), $typefrom($fn_params[$vacount + 3]), $typefrom($fn_params[$vacount + 4]), $typefrom($fn_params[$vacount + 5])) => unreachable());
		$NewFnType f = fn (args, a, b, c, d, e, f)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], *($typefrom($params[3][0])*)&args[$offset + 3], a, b, c, d, e, f, );
		};
	$case 7:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2]), $typefrom($fn_params[$vacount + 3]), $typefrom($fn_params[$vacount + 4]), $typefrom($fn_params[$vacount + 5]), $typefrom($fn_params[$vacount + 6])) => unreachable());
		$NewFnType f = fn (args, a, b, c, d, e, f, g)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], *($typefrom($params[2][0])*)&args[$offset + 2], a, b, c, d, e, f, g, );
		};
	$case 8:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2]), $typefrom($fn_params[$vacount + 3]), $typefrom($fn_params[$vacount + 4]), $typefrom($fn_params[$vacount + 5]), $typefrom($fn_params[$vacount + 6]), $typefrom($fn_params[$vacount + 7])) => unreachable());
		$NewFnType f = fn (args, a, b, c, d, e, f, g, h)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], *($typefrom($params[1][0])*)&args[$offset + 1], a, b, c, d, e, f, g, h, );
		};
	$case 9:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2]), $typefrom($fn_params[$vacount + 3]), $typefrom($fn_params[$vacount + 4]), $typefrom($fn_params[$vacount + 5]), $typefrom($fn_params[$vacount + 6]), $typefrom($fn_params[$vacount + 7]), $typefrom($fn_params[$vacount + 8])) => unreachable());
		$NewFnType f = fn (args, a, b, c, d, e, f, g, h, i)
		{
			return (($OrigFnType)args[0])(*($typefrom($params[0][0])*)&args[$offset + 0], a, b, c, d, e, f, g, h, i, );
		};
	$case 10:
		var $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**, $typefrom($fn_params[$vacount + 0]), $typefrom($fn_params[$vacount + 1]), $typefrom($fn_params[$vacount + 2]), $typefrom($fn_params[$vacount + 3]), $typefrom($fn_params[$vacount + 4]), $typefrom($fn_params[$vacount + 5]), $typefrom($fn_params[$vacount + 6]), $typefrom($fn_params[$vacount + 7]), $typefrom($fn_params[$vacount + 8]), $typefrom($fn_params[$vacount + 9])) => unreachable());
		$NewFnType f = fn (args, a, b, c, d, e, f, g, h, i, j)
		{
			return (($OrigFnType)args[0])(a, b, c, d, e, f, g, h, i, j, );
		};
	$default:
		$error "Unsupported number of function parameters";
	$endswitch
$endswitch
return f;
}
