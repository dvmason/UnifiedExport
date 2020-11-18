tests
testWhileLoops
	| method |
	method := transpiler transpile: UEClass1ForTest >> #test13.
	self assert: transpiler selectors size equals: 3.
	method := transpiler transpile: UEClass1ForTest >> #test14.
	self assert: transpiler selectors size equals: 4.
