tests
testSelfSubclass
	| method |
	method := typeChecker externalMessage: #callWithOverride: class: UEClass1ForTest.
	self assert: method targetType hasType: method resultType.
	method := typeChecker externalMessage: #callWithOverride: class: UEClass2ForTest.
	self assert: method targetType hasType: method resultType.
