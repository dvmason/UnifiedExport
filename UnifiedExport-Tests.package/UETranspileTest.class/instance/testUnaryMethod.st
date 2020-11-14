tests
testUnaryMethod
	| method |
	method := transpiler transpile: UEClass1ForTest >> #myself.
	self assert: method argTypes size equals: 0.
	self assert: method statements size equals: 1.
	self assert: transpiler methodsToTranspile size equals: 0.
	self assertSelectorsEquals: #(myself).

