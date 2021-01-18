tests
testInteger
	| method |
	self halt.
	method := transpiler transpile: UEClass1ForTest >> #integer.
	self assert: transpiler selectors size equals: 1.
