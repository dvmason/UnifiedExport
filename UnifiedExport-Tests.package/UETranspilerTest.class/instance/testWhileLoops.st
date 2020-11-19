tests
testWhileLoops
	| method |
	method := transpiler transpile: UEClass1ForTest >> #test13.
	self assert: transpiler selectors size equals: 3.
	self assert: (method statements first  isKindOf: UEWhileNode).
	method := transpiler transpile: UEClass1ForTest >> #test14.
	self assert: transpiler selectors size equals: 4.
	self assert: (method statements first  isKindOf: UEWhileNode).
	method := transpiler transpile: UEClass1ForTest >> #test15.
	self assert: transpiler selectors size equals: 5.
	self assert: (method statements first  isKindOf: UEWhileNode).
	method := transpiler transpile: UEClass1ForTest >> #test15:.
	self assert: transpiler selectors size equals: 6.
	self assert: (method statements first  isKindOf: UEWhileNode).
