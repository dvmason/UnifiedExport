tests
testClassVariable
	| method |
	method := transpiler transpile: UEClass1ForTest >> #returnClassVar.
	self assert: method argTypes size equals: 0.
	self assert: method statements size equals: 1.
	self assert: transpiler methodsToTranspile size equals: 0.
	self assert: method statements first expression scope equals: method uEClass classScope.
	method := transpiler transpile: UEClass1ForTest class >> #classVar:.
	self assert: method argTypes size equals: 1.
	self assert: method statements size equals: 2.
	self assert: transpiler methodsToTranspile size equals: 0.
	self assert: method statements first variable scope equals: method uEClass classScope.
	self assert: transpiler selectors size equals: 2.
