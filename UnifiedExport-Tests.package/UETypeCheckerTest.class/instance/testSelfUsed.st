tests
testSelfUsed
	| method |
	method := typeChecker externalCall: #test1 class:  UEClass1ForTest.
	self assert: method targetType hasType: method resultType.
