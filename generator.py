print("module closure;")
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
