tests
testSelfUnused
	| method |
	method := UEClass1ForTest>>#test2.
	transpiler transpileMethod: method.
	self assert: method targetType hasType: method resultType.
