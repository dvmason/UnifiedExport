transpiling
transpileMethod: aCompiledMethod
	| result class method altClass selector |
	result := methods at: aCompiledMethod ifAbsentPut: [
		method := aCompiledMethod.
		altClass := nil.
		class := method methodClass.
		self class: class.
		selector := aCompiledMethod selector.
		methodNode := (UEMethodNode method: aCompiledMethod) class: currentClass.
		currentScope := (class isInstanceSide ifTrue: [
			methodNode instanceSideScope
		] ifFalse: [
			methodNode classSideScope
		]) newMethodScope: selector.
		(class classSide includesSelector: self class transpilerPlaceholderSelector) ifTrue: [
			altClass := class instanceSide perform: self class transpilerPlaceholderSelector.
			altClass := class isInstanceSide ifTrue: [
					altClass instanceSide
				] ifFalse: [
					altClass classSide
				].
			(altClass includesSelector: selector) ifTrue: [
				method := altClass compiledMethodAt: selector
			] 
		].
		self visit: method ast
	].
	self selector: aCompiledMethod selector.
	^ result