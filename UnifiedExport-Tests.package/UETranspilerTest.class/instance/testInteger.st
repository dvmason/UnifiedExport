tests
testInteger
	| method |
	method := transpiler transpile: UEClass1ForTest >> #integer.
	self assert: transpiler selectors size equals: 1.
