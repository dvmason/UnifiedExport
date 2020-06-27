tests
testMyself
	| method |
	method := typeChecker externalCall: #myself class: UEClass1ForTest.
	self assert: method targetType hasType: method resultType.
