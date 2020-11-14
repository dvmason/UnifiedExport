transpiling
addMethodToTranspile: method 
	(methods includesKey: method) ifFalse: [
		methodsToTranspile add: method
	].
