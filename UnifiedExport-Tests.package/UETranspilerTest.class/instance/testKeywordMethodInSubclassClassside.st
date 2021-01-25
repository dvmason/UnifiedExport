tests
testKeywordMethodInSubclassClassside
	| method |
	method := transpiler transpile: UEClass2ForTest class >> #doInitialize:.
	self assert: method argTypes size equals: 1.
	self assert: method statements size equals: 2.
	self assert: transpiler methodsToTranspile size equals: 2.
	self assertSelectorsEquals: #(#callWithOverride: #keywordAfterYourselfAfterKeyword:).
