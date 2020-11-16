transpiling
transpileMethod: aCompiledMethod
	| result |
	result := methods at: aCompiledMethod ifAbsentPut: [
		self class: aCompiledMethod methodClass.
		methodNode := (UEMethodNode method: aCompiledMethod) class: currentClass.
		currentScope := (aCompiledMethod methodClass isInstanceSide ifTrue: [
			methodNode instanceSideScope
		] ifFalse: [
			methodNode classSideScope
		]) newMethodScope: aCompiledMethod selector.
		self visit: aCompiledMethod ast
	].
	self selector: aCompiledMethod selector.
	^ result