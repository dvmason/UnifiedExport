transpiling
selectorForPerform: selector
	(selectorsForPerform includes: selector) ifTrue: [ ^ self ].
	selectorsForPerform add: selector.
	classes keysDo: [: class |
		class instanceSide compiledMethodAt: selector ifPresent: [: method |
			self addMethodToTranspile: method
		].
		class classSide compiledMethodAt: selector ifPresent: [: method |
			self addMethodToTranspile: method
		].
	].
