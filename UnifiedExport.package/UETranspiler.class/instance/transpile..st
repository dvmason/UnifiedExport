transpilating
transpile: aCompiledMethod
	| ast |
	ast := aCompiledMethod ast.
	^ ast acceptVisitor: self