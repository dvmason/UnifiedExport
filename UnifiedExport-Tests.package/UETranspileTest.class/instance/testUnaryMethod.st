tests
testUnaryMethod
	| method |
	method := transpiler transpile: UEClass1ForTest >> #myself.
	self assert: method argTypes size equals: 0.
