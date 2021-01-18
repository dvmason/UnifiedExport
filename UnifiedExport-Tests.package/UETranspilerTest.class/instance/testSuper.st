tests
testSuper
	| method |
	method := transpiler transpile: UEClass2ForTest >> #foo:.
	self assert: transpiler selectors size equals: 1.
