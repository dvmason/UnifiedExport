transpiling
transpileMethod: aCompiledMethod
	| ast result |
	result := methods at: aCompiledMethod ifAbsentPut: [
		self class: aCompiledMethod methodClass.
		currentMethod := aCompiledMethod.
		ast := aCompiledMethod ast.
		ast acceptVisitor: self
	].
	self selector: aCompiledMethod selector.
	^ result