tests
testKeywordMethodInSubclass
	| method |
	method := transpiler transpile: UEClass2ForTest >> #test4:.
	self assert: method argTypes size equals: 1.
	self assert: method statements size equals: 2.
	self assert: transpiler methodsToTranspile size equals: 2.
	self assertSelectorsEquals: #(test4: test3:).
