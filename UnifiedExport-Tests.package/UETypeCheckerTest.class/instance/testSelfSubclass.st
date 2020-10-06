tests
testSelfSubclass
	| method |
	method := typeChecker externalMessage: #test4: class: UEClass1ForTest.
	self assert: method targetType hasType: method resultType.
	method := typeChecker externalMessage: #test4: class: UEClass2ForTest.
	self assert: method targetType hasType: method resultType.
