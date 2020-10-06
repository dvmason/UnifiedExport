tests
testUnaryInt
	| method |
	typeChecker := UETypeChecker new. " get rid of this once ready "
	method := typeChecker externalMessage: #unaryInt class: UEClass1ForTest. " type: UEClass1ForTest unaryInt "
	self assert: method
		hasType: (UEMessage selector: #unaryInt
											result: self integer).
	" may not be right expectation... perhaps it should be unifiableWith rather than isSameSet "