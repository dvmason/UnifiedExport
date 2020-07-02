tests
testYourself
	| method |
	method := typeChecker externalCall: #yourself class: UEClass1ForTest.
	self assert: method targetType hasType: method resultType.
