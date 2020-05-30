tests
testYourself
	| method |
	method := UEClass1ForTest>>#yourself.
	transpiler transpileMethod: method.
	self assert: method targetType sameType: method resultType.
