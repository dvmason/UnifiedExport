tests
testArray
	| method |
	method := transpiler transpile: UEClass1ForTest >> #test16.
	self assert: transpiler selectors size equals: 1.
