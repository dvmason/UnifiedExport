scoping
scoped: scopeClass do: aBlock
	| savedScope savedNode |
	savedNode := methodOrBlock.
	savedScope := currentScope.
	currentScope := scopeClass from: savedScope.
	^ [
		aBlock value
	] ensure: [
		currentScope := savedScope.
		methodOrBlock := savedNode
	]