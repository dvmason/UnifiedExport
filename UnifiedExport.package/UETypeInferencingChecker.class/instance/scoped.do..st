scoping
scoped: scopeType do: aBlock
	| savedScope |
	savedScope := currentScope.
	scopeType scope ifNil: [ self halt ].
	currentScope := scopeType scope.
	[  aBlock value ] ensure: [ currentScope := savedScope ]