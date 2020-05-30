tests
testYourself
	| method |
	method := UEClass1ForTest>>#yourself.
	transpiler transpileMethod: method.
	self assert: method targetType hasType: method resultType.
