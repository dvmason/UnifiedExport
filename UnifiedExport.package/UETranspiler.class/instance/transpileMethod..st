transpiling
transpileMethod: aCompiledMethod
	| class methodToVisit altClass selector method ueClass |
	^ methods at: aCompiledMethod ifAbsentPut: [
		methodToVisit := aCompiledMethod.
		altClass := nil.
		class := methodToVisit methodClass.
		selector := aCompiledMethod selector.
		method := (UEMethod method: aCompiledMethod) class: (self class: class).
		(class classSide includesSelector: self class transpilerPlaceholderSelector) ifTrue: [
			altClass := class instanceSide perform: self class transpilerPlaceholderSelector.
			altClass := class isClassSide ifTrue: [
					altClass classSide
				] ifFalse: [
					altClass instanceSide
				].
			(altClass includesSelector: selector) ifTrue: [
				methodToVisit := altClass compiledMethodAt: selector
			] 
		].
		ueClass := self class: class.
		ueClass addMethod: method.
		self selector: selector forReceiver: ueClass.
		astConverter visitMethod: methodToVisit ast as: method.
	]