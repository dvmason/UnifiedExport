tests
testMyself
	| method |
	method := UEClass1ForTest>>#myself.
	transpiler transpileMethod: method.
	self assert: method targetType hasType: method resultType.
