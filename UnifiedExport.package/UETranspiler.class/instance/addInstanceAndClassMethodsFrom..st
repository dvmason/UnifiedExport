transpiling
addInstanceAndClassMethodsFrom: aClass
	aClass instanceSide methodsDo: [: method |
		(selectorsForPerform includes: method selector) ifTrue: [
			self addMethodToTranspile: method
	]].
	aClass classSide methodsDo: [: method |
		(selectorsForPerform includes: method selector) ifTrue: [
			self addMethodToTranspile: method
	]].
