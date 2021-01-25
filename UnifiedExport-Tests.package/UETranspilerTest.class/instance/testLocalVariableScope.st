tests
testLocalVariableScope
	| method |
	method := transpiler transpile: UEClass1ForTest >> #localAssignedParameter:.
