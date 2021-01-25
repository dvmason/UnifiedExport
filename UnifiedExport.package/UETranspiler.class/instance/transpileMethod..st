transpiling
transpileMethod: aCompiledMethod
	| methodToVisit selector method |
	^ methods at: aCompiledMethod ifAbsentPut: [
		methodToVisit := aCompiledMethod.
		currentClass := self class: methodToVisit methodClass.
		selector := aCompiledMethod selector.
		method := (UEMethod method: aCompiledMethod) class: currentClass.
		currentClass addMethod: method.
		currentClass withSelector: self class transpilerPlaceholderSelector altClassDo: [: altClass |
			(altClass includesSelector: selector) ifTrue: [
				methodToVisit := altClass compiledMethodAt: selector
			] 
		].
		currentScope := method instanceScope newMethodScope: methodToVisit ast selector.
		currentScope put: UESelf new.
		currentScope put: UEReturn new.
		methodOrBlock := method.
		astConverter visitMethod: methodToVisit ast.
		(method statements isEmpty or: [method statements last isReturn not]) ifTrue: [
			method addStatement: (UEReturnNode new expression: (self visitSelfNode: nil)).
		].
	 	method 
	]