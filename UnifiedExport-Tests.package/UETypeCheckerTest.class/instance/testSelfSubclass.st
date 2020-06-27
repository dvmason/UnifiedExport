tests
testSelfSubclass
	| method |
	method := typeChecker externalCall: #test4: class: UEClass1ForTest.
	self assert: method targetType hasType: method resultType.
	method := typeChecker externalCall: #test4: class: UEClass2ForTest.
	self assert: method targetType hasType: method resultType.
