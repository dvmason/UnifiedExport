transpiling
selector: selector forReceiver: aType
	aType allClassesDo: [: class | | method |
		method := class lookupSelector: selector.
		method ifNil: [ self error: 'cannot find method ',selector,' for class ',class name ].
		self addMethodToTranspile: method
	].
