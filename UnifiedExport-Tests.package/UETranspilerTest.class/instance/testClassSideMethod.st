tests
testClassSideMethod
	| method | " UEClass1ForTest >> #bar: "
	method := transpiler transpile: UEClass1ForTest class >> #abc:.
	self assert: method argTypes size equals: 1.
	self assert: method statements size equals: 2.
	self assert: transpiler methodsToTranspile size equals: 0.
	self assert: method statements first variable scope equals: method uEClass classSide instanceScope.
