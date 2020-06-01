tests
testUnaryInt
	| method |
	method := UEClass1ForTest>>#unaryInt.
	transpiler transpileMethod: method.
	self assert: method
		hasType: (UEMessage selector: #unaryInt
											result: UESimpleType integer).
	" may not be right expectation... perhaps it should be unifiableWith rather than isSameSet "