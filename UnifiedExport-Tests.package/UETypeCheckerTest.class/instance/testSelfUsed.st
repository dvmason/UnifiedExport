tests
testSelfUsed
	| method |
	method := typeChecker externalMessage: #test1 class:  UEClass1ForTest.
	self assert: method targetType hasType: method resultType.
