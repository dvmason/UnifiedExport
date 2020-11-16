visiting
visitBlockNode: aRBBlockNode
	| savedScope node |
	savedScope := currentScope.
	currentScope := savedScope newBlockScope.
	[
		node := UEBlockNode new scope: currentScope.
		self flag: #ToDo. " add argument handling "
		node statements: (self visitAll: aRBBlockNode statements).
		^ node
	] ensure: [ currentScope := savedScope ]