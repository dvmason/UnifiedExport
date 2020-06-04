tests
testSelfSubclass
	| method |
	method := UEClass1ForTest>>#test4:.
	transpiler transpileMethod: method.
	self assert: method targetType hasType: method resultType.
	method := UEClass2ForTest>>#test4:.
	transpiler transpileMethod: method.
	self assert: method targetType hasType: method resultType.
