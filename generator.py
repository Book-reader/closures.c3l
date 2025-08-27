print("module closures::closure;")
# print("import std::io;")

print("macro @generate_closure_call_func($OrigFnType, usz $offset, ...) @private\n{")
print("\tvar $params = {};")
print("\t$foreach $param : $OrigFnType.paramsof:")
print("\t\t$params = $params +++ {$param.type};")
print("\t$endforeach")
print("\t$switch $params.len:")
for i in range(10 + 1):
	print(f"\t$case {i}:")
	print("\t\t$switch $params.len - $vacount:")
	for j in range(i + 1):
		print(f"\t\t$case {j}:")
		print("\t\t\tvar $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(", end = '')
		for k in range(j):
			print(f"$typefrom($params[$vacount + {k}]), ", end = '')
		print(") => unreachable());")
		print("\t\t\t$NewFnType f = fn (", end = '')
		for k in range(j):
			print(f"{chr(97 + k)}, ", end = '')
		print(")\n\t\t\t{")
		print("\t\t\t\tstatic void** closure_ptr;")
		# print("\t\t\t\tio::printfn(\"closure_ptr: %s\", closure_ptr);")
		# print("\t\t\t\t@sprintf(\"%s:%s:%s\", $$FILEPATH, $$LINE, @rnd());")
		print("\t\t\t\tif (@unlikely(!closure_ptr))")
		print("\t\t\t\t{")
		print("\t\t\t\t\tassert(temp_closure_ptr);")
		print("\t\t\t\t\tclosure_ptr = temp_closure_ptr;")
		print("\t\t\t\t\ttemp_closure_ptr = null;")
		print("\t\t\t\t\t$if types::flat_type($OrigFnType.returns) == void.typeid ||| types::flat_type($OrigFnType.returns) == void?.typeid:")
		print("\t\t\t\t\t\treturn;")
		print("\t\t\t\t\t$else")
		print("\t\t\t\t\t\treturn {};")
		print("\t\t\t\t\t$endif")
		print("\t\t\t\t}");
		print("\t\t\treturn (($OrigFnType)closure_ptr[0])(", end = '')
		for k in range(i - j):
			print(f"*($typefrom($params[{k}])*)closure_ptr[$offset + {k}], ", end = '')
		for k in range(j):
			print(f"{chr(97 + k)}, ", end = '')
		print(");")

		print("\t\t\t};")
		print("\t\t\t(void)f(", end = '')
		for k in range(j):
			print("{}, ", end = '')
		print(");")
		print("\t\t\treturn f;")
	print("\t\t$default:")
	print("""\t\t\t$error "Unsupported number of function parameters";""")
	print("\t\t$endswitch")
print("\t$endswitch")
print("}")


# print("macro @generate_closure($OrigFnType, $offset, $params, ...) @private\n{")
# print("return fn $typefrom($OrigFnType.returns)(void** wrapped, void** passed)")
# print("}")

print("module closures::closure;")
print("import closures @public;")
# print("import std::io;")
print("macro @generate_closure($OrigFnType, $offset, $params, ...) @private\n{")
print("$switch $params.len:")
for i in range(10 + 1):
	print(f"$case {i}:")
	print("\t$switch $params.len - $vacount:")
	for j in range(i + 1):
		print(f"\t$case {j}:")
		print("\t\tvar $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(", end = '')
		for k in range(j):
			print(f"$typefrom($params[$vacount + {k}]), ", end = '')
		print(") => unreachable());")
		# print("\t\tevil_hack::INIT{Closure, $NewFnType};")
		print("\t\t$NewFnType f = fn (", end = '')
		for k in range(j):
			print(f"{chr(97 + k)}, ", end = '')
		print(")\n\t\t{")
		print("\t\t\tvoid** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);")
		# print("\t\t\tio::printfn(\"Args are at address %p\", args);")
		print("\t\t\treturn (($OrigFnType)args[0])(", end = '')
		for k in range(i - j):
			print(f"*($typefrom($params[{k}])*)args[{k} + $offset], ", end = '')
		for k in range(j):
			print(f"{chr(97 + k)}, ", end = '')
		print(");")
		print("\t\t};")
	print("\t$default:")
	print("""\t\t$error "Unsupported number of function parameters";""")
	print("\t$endswitch")
print("$endswitch")
print("return f;")
print("}")


# print("macro @generate_closure($OrigFnType, $offset, $params, ...)@private\n{")
# print("var $fn_params = $OrigFnType.params;")
# print("$switch $fn_params.len:")
# for i in range(10 + 1):
# 	print(f"$case {i}:")
# 	print("\t$switch $fn_params.len - $vacount:")
# 	for j in range(i + 1):
# 		print(f"\t$case {j}:")
# 		print("\t\tvar $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(void**", end = '')
# 		for k in range(j):
# 			print(f", $typefrom($fn_params[$vacount + {k}])", end = '')
# 		print(") => unreachable());")
# 		# print("\t\tevil_hack::INIT{Closure, $NewFnType};")
# 		print("\t\t$NewFnType f = fn (args", end = '')
# 		for k in range(j):
# 			print(f", {chr(97 + k)}", end = '')
# 		print(")\n\t\t{")
# 		print("\t\t\treturn (($OrigFnType)args[0])(", end = '')
# 		for k in range(i - j):
# 			print(f"*($typefrom($params[{k}][0])*)(&((char*)args)[$params[{k}][1]]), ", end = '')
# 		for k in range(j):
# 			print(f"{chr(97 + k)}, ", end = '')
# 		print(");")
# 		print("\t\t};")
# 	print("\t$default:")
# 	print("""\t\t$error "Unsupported number of function parameters";""")
# 	print("\t$endswitch")
# print("$endswitch")
# print("return f;")
# print("}")
