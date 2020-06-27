scoping
scoped: scopeType do: aBlock
	| savedScope |
	savedScope := currentScope.
	currentScope := scopeType scope.
	[  aBlock value ] ensure: [ currentScope := savedScope ]