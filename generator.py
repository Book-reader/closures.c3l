print("module closures::closure;")
print("import closures @public;")

max_params = 20
print("macro @generate_closure($OrigFnType, $offset, $params, ...) @private\n{")
print("$switch $params.len:")
for i in range(max_params + 1):
	print(f"$case {i}:")
	print("\t$switch $params.len - $vacount:")
	for j in range(i + 1):
		print(f"\t$case {j}:")
		print("\t\tvar $NewFnType = $typeof(fn $typefrom($OrigFnType.returns)(", end = '')
		for k in range(j):
			print(f"$typefrom($params[$vacount + {k}]), ", end = '')
		print(") => unreachable());")
		print("\t\t$NewFnType f = fn (", end = '')
		for k in range(j):
			print(f"{chr(97 + k)}, ", end = '')
		print(")\n\t\t{")
		print("\t\t\tvoid** args = *(void***)((uptr)$$returnaddress(0) - returnaddr_offset);")
		# print("\t\t\tvoid** args;;")
		# print("\t\t\tasm {popq args;};")
		# print("args = (void**)((uptr)((void**)*@volatile_load(args)) - returnaddr_offset);")
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
