transpiling
selectorForPerform: selector
	(selectors includes: selector) ifTrue: [ ^ self ].
	selectors add: selector.
	classes keysDo: [: class |
		class instanceSide compiledMethodAt: selector ifPresent: [: method |
			self addMethodToTranspile: method
		].
		class classSide compiledMethodAt: selector ifPresent: [: method |
			self addMethodToTranspile: method
		].
	].
