tests
testSelfUnused
	| method |
	method := typeChecker externalMessage: #test2 class: UEClass1ForTest.
	self assert: method targetType hasType: method resultType.
