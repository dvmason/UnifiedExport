tests
testYourself
	| method |
	method := typeChecker externalMessage: #yourself class: UEClass1ForTest.
	self assert: method targetType hasType: method resultType.
