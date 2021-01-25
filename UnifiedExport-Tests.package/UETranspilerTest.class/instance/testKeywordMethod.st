tests
testKeywordMethod
	| method |
	method := transpiler transpile: UEClass1ForTest >> #sideEffectThenReturnInteger:.
	self assert: method argTypes size equals: 1.
	self assert: method statements size equals: 2.
	self assert: transpiler methodsToTranspile size equals: 1.
