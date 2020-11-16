transpiling
transpileMethod: aCompiledMethod
	| result |
	result := methods at: aCompiledMethod ifAbsentPut: [
		self class: aCompiledMethod methodClass.
		currentMethod := aCompiledMethod.
		self visit: aCompiledMethod ast
	].
	self selector: aCompiledMethod selector.
	^ result