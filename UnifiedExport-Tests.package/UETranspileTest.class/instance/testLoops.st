tests
testLoops
	| method |
	method := transpiler transpile: UEClass1ForTest >> #test11.
	self assert: transpiler selectors size equals: 2.

