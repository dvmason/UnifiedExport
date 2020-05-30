tests
testUnaryMethod
	| method |
	method := UEClass1ForTest>>#unaryInt.
	transpiler transpileMethod: method.
	self assert: method sameType: (UEMessage selector: #unaryInt target: (transpiler typeOf: UEClass1ForTest) result: UESimpleType integer args: #()).
