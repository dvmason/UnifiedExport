tests
testSelfUsed
	| method |
	method := UEClass1ForTest>>#test1.
	transpiler transpileMethod: method.
	self assert: method targetType hasType: method resultType.
