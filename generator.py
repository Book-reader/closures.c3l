
# for _ in range(10):
#for i in range(10):
#	for j in range(i - 1):
#		ch = chr(97 + j);
#		print(f"{ch}1 ", end = '')
#	for k in range(i, 10 - i):
#		ch = chr(97 + k);
#		print(f"{ch}2 ", end = '')
#	print()
print("module closure {Type};")
print("macro @generate_closure($OrigFnType, ...) @private\n{")
print("var $params = $OrigFnType.params;")
print("$switch $OrigFnType.params.len:")
for i in range(10 + 1):
	print(f"$case {i}:")
	print("\t$switch $OrigFnType.params.len - $vacount:")
	for j in range(i):
		print(f"\t$case {j}:")
		print("\t\tvar $NewFnType = $typeof(fn Type(Closure", end = '')
		for k in range(j):
			print(f", $typefrom($params[$vacount + {k}])", end = '')
		print(") => unreachable());")
		print("\t\tevil_hack::INIT{Closure, $NewFnType};")
		print("\t\t$NewFnType f = fn (closure", end = '')
		for k in range(j):
			print(f", {chr(97 + k)}", end = '')
		print(")\n\t\t{")
		print("\t\t\treturn (($OrigFnType)closure[1])(", end = '')
		for k in range(i - j):
			print(f"*($typefrom($params[{k}])*)closure[3 + {k}], ", end = '')
		for k in range(j):
			print(f"{chr(97 + k)}, ", end = '')
		print(");")
		print("\t\t};")
	print("\t$default:")
	print("""$error "Unsupported number of function parameters";""")
	print("\t$endswitch")
print("$endswitch")
print("return f;")
print("}")
