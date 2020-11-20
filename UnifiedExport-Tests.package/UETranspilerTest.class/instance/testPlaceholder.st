tests
testPlaceholder
	| method |
	method := transpiler transpile: UEClass1ForTest >> #test17.
	self assert: transpiler selectors size equals: 1.
