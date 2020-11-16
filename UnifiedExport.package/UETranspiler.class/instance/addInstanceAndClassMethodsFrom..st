transpiling
addInstanceAndClassMethodsFrom: aClass
	aClass instanceSide methodsDo: [: method |
		(selectors includes: method selector) ifTrue: [
			self addMethodToTranspile: method
	]].
	aClass classSide methodsDo: [: method |
		(selectors includes: method selector) ifTrue: [
			self addMethodToTranspile: method
	]].
