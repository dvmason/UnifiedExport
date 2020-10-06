tests
testMyself
	| method |
	method := typeChecker externalMessage: #myself class: UEClass1ForTest.
	self assert: method targetType hasType: method resultType.
