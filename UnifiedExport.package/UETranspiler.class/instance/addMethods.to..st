transpiling
addMethods: aClass to: class
	aClass instanceSide methodsDo: [: method |
		(selectors includes: method selector) ifTrue: [
			methodsToTranspile add: method
	]].
	aClass classSide methodsDo: [: method |
		(selectors includes: method selector) ifTrue: [
			methodsToTranspile add: method
	]].
