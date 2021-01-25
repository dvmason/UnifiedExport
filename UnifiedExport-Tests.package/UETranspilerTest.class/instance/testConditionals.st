tests
testConditionals
	| method |
	method := transpiler transpile: UEClass1ForTest >> #instanceVariableIfTrueAssign.
	self assert: method argTypes size equals: 0.
	self assert: method statements size equals: 2.
	self assert: transpiler methodsToTranspile size equals: 0.
	method := transpiler transpile: UEClass1ForTest >> #instanceVariableIfTrueFalseReturnInteger.
	self assert: method argTypes size equals: 0.
	self assert: method statements size equals: 1.
	self assert: transpiler methodsToTranspile size equals: 0.
	method := transpiler transpile: UEClass1ForTest >> #ifBlockNotBlock.
	self assert: method argTypes size equals: 0.
	self assert: method statements size equals: 2.
	self assert: transpiler methodsToTranspile size equals: 0.
	self assert: transpiler selectors size equals: 3.
	self assert: (method statements first falseBranch statements first isKindOf: UEMessageNode).
	self should: [ transpiler transpile: UEClass1ForTest >> #test10 ] raise: Error.

