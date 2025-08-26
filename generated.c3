module closure;
macro @generate_closure_call_func($OrigFnType, usz $offset, ...) @private
{
	var $params = $OrigFnType.params;
	$switch $OrigFnType.params.len:
	$case 0:
		$switch $OrigFnType.params.len - $vacount:
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])();
			};
			f();
			return f;
		$default:
			$error "Unsupported number of function parameters";
		$endswitch
	$case 1:
		$switch $OrigFnType.params.len - $vacount:
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], );
			};
			f();
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(a, );
			};
			f({}, );
			return f;
		$default:
			$error "Unsupported number of function parameters";
		$endswitch
	$case 2:
		$switch $OrigFnType.params.len - $vacount:
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], );
			};
			f();
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], a, );
			};
			f({}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(a, b, );
			};
			f({}, {}, );
			return f;
		$default:
			$error "Unsupported number of function parameters";
		$endswitch
	$case 3:
		$switch $OrigFnType.params.len - $vacount:
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], );
			};
			f();
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], a, );
			};
			f({}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], a, b, );
			};
			f({}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(a, b, c, );
			};
			f({}, {}, {}, );
			return f;
		$default:
			$error "Unsupported number of function parameters";
		$endswitch
	$case 4:
		$switch $OrigFnType.params.len - $vacount:
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], );
			};
			f();
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], a, );
			};
			f({}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], a, b, );
			};
			f({}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], a, b, c, );
			};
			f({}, {}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(a, b, c, d, );
			};
			f({}, {}, {}, {}, );
			return f;
		$default:
			$error "Unsupported number of function parameters";
		$endswitch
	$case 5:
		$switch $OrigFnType.params.len - $vacount:
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], );
			};
			f();
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], a, );
			};
			f({}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], a, b, );
			};
			f({}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], a, b, c, );
			};
			f({}, {}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], a, b, c, d, );
			};
			f({}, {}, {}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(a, b, c, d, e, );
			};
			f({}, {}, {}, {}, {}, );
			return f;
		$default:
			$error "Unsupported number of function parameters";
		$endswitch
	$case 6:
		$switch $OrigFnType.params.len - $vacount:
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], *($typefrom($params[5])*)closure_ptr[$offset + 5], );
			};
			f();
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], a, );
			};
			f({}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], a, b, );
			};
			f({}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], a, b, c, );
			};
			f({}, {}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], a, b, c, d, );
			};
			f({}, {}, {}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], a, b, c, d, e, );
			};
			f({}, {}, {}, {}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(a, b, c, d, e, f, );
			};
			f({}, {}, {}, {}, {}, {}, );
			return f;
		$default:
			$error "Unsupported number of function parameters";
		$endswitch
	$case 7:
		$switch $OrigFnType.params.len - $vacount:
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], *($typefrom($params[5])*)closure_ptr[$offset + 5], *($typefrom($params[6])*)closure_ptr[$offset + 6], );
			};
			f();
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], *($typefrom($params[5])*)closure_ptr[$offset + 5], a, );
			};
			f({}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], a, b, );
			};
			f({}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], a, b, c, );
			};
			f({}, {}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], a, b, c, d, );
			};
			f({}, {}, {}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], a, b, c, d, e, );
			};
			f({}, {}, {}, {}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], a, b, c, d, e, f, );
			};
			f({}, {}, {}, {}, {}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(a, b, c, d, e, f, g, );
			};
			f({}, {}, {}, {}, {}, {}, {}, );
			return f;
		$default:
			$error "Unsupported number of function parameters";
		$endswitch
	$case 8:
		$switch $OrigFnType.params.len - $vacount:
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], *($typefrom($params[5])*)closure_ptr[$offset + 5], *($typefrom($params[6])*)closure_ptr[$offset + 6], *($typefrom($params[7])*)closure_ptr[$offset + 7], );
			};
			f();
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], *($typefrom($params[5])*)closure_ptr[$offset + 5], *($typefrom($params[6])*)closure_ptr[$offset + 6], a, );
			};
			f({}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], *($typefrom($params[5])*)closure_ptr[$offset + 5], a, b, );
			};
			f({}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], a, b, c, );
			};
			f({}, {}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], a, b, c, d, );
			};
			f({}, {}, {}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], a, b, c, d, e, );
			};
			f({}, {}, {}, {}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], a, b, c, d, e, f, );
			};
			f({}, {}, {}, {}, {}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], a, b, c, d, e, f, g, );
			};
			f({}, {}, {}, {}, {}, {}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(a, b, c, d, e, f, g, h, );
			};
			f({}, {}, {}, {}, {}, {}, {}, {}, );
			return f;
		$default:
			$error "Unsupported number of function parameters";
		$endswitch
	$case 9:
		$switch $OrigFnType.params.len - $vacount:
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], *($typefrom($params[5])*)closure_ptr[$offset + 5], *($typefrom($params[6])*)closure_ptr[$offset + 6], *($typefrom($params[7])*)closure_ptr[$offset + 7], *($typefrom($params[8])*)closure_ptr[$offset + 8], );
			};
			f();
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], *($typefrom($params[5])*)closure_ptr[$offset + 5], *($typefrom($params[6])*)closure_ptr[$offset + 6], *($typefrom($params[7])*)closure_ptr[$offset + 7], a, );
			};
			f({}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], *($typefrom($params[5])*)closure_ptr[$offset + 5], *($typefrom($params[6])*)closure_ptr[$offset + 6], a, b, );
			};
			f({}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], *($typefrom($params[5])*)closure_ptr[$offset + 5], a, b, c, );
			};
			f({}, {}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], a, b, c, d, );
			};
			f({}, {}, {}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], a, b, c, d, e, );
			};
			f({}, {}, {}, {}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], a, b, c, d, e, f, );
			};
			f({}, {}, {}, {}, {}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], a, b, c, d, e, f, g, );
			};
			f({}, {}, {}, {}, {}, {}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], a, b, c, d, e, f, g, h, );
			};
			f({}, {}, {}, {}, {}, {}, {}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(a, b, c, d, e, f, g, h, i, );
			};
			f({}, {}, {}, {}, {}, {}, {}, {}, {}, );
			return f;
		$default:
			$error "Unsupported number of function parameters";
		$endswitch
	$case 10:
		$switch $OrigFnType.params.len - $vacount:
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], *($typefrom($params[5])*)closure_ptr[$offset + 5], *($typefrom($params[6])*)closure_ptr[$offset + 6], *($typefrom($params[7])*)closure_ptr[$offset + 7], *($typefrom($params[8])*)closure_ptr[$offset + 8], *($typefrom($params[9])*)closure_ptr[$offset + 9], );
			};
			f();
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], *($typefrom($params[5])*)closure_ptr[$offset + 5], *($typefrom($params[6])*)closure_ptr[$offset + 6], *($typefrom($params[7])*)closure_ptr[$offset + 7], *($typefrom($params[8])*)closure_ptr[$offset + 8], a, );
			};
			f({}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], *($typefrom($params[5])*)closure_ptr[$offset + 5], *($typefrom($params[6])*)closure_ptr[$offset + 6], *($typefrom($params[7])*)closure_ptr[$offset + 7], a, b, );
			};
			f({}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], *($typefrom($params[5])*)closure_ptr[$offset + 5], *($typefrom($params[6])*)closure_ptr[$offset + 6], a, b, c, );
			};
			f({}, {}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], *($typefrom($params[5])*)closure_ptr[$offset + 5], a, b, c, d, );
			};
			f({}, {}, {}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], *($typefrom($params[4])*)closure_ptr[$offset + 4], a, b, c, d, e, );
			};
			f({}, {}, {}, {}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], *($typefrom($params[3])*)closure_ptr[$offset + 3], a, b, c, d, e, f, );
			};
			f({}, {}, {}, {}, {}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], *($typefrom($params[2])*)closure_ptr[$offset + 2], a, b, c, d, e, f, g, );
			};
			f({}, {}, {}, {}, {}, {}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], *($typefrom($params[1])*)closure_ptr[$offset + 1], a, b, c, d, e, f, g, h, );
			};
			f({}, {}, {}, {}, {}, {}, {}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(*($typefrom($params[0])*)closure_ptr[$offset + 0], a, b, c, d, e, f, g, h, i, );
			};
			f({}, {}, {}, {}, {}, {}, {}, {}, {}, );
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
					$if types::flat_type($OrigFnType.returns) == void.typeid:
						return;
					$else
						return {};
					$endif
				}
			return (($OrigFnType)closure_ptr[0])(a, b, c, d, e, f, g, h, i, j, );
			};
			f({}, {}, {}, {}, {}, {}, {}, {}, {}, {}, );
			return f;
		$default:
			$error "Unsupported number of function parameters";
		$endswitch
	$endswitch
}
