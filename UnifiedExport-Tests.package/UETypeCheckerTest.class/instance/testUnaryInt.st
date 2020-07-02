tests
testUnaryInt
	| method |
	method := typeChecker externalCall: #unaryInt class: UEClass1ForTest.
	self assert: method
		hasType: (UEMessage selector: #unaryInt
											result: self integer).
	" may not be right expectation... perhaps it should be unifiableWith rather than isSameSet "