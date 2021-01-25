tests
testDoLoops
	| method |
	method := transpiler transpile: UEClass1ForTest >> #toDoWithBlock.
	self assert: transpiler selectors size equals: 2.
	method := transpiler transpile: UEClass1ForTest >> #toDoByWithBlock.
	self assert: (method statements first body statements first isKindOf: UEMessageNode).
	self assert: transpiler selectors size equals: 3.

