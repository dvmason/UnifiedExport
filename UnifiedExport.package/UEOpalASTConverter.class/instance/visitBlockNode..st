visiting
visitBlockNode: aRBBlockNode
	^ transpiler scoped: UEBlockScope do: [ | node |
		node := UEBlockNode new scope: transpiler currentScope.
		transpiler methodOrBlock: node.
		self addTempVariablesToCurrentScope: aRBBlockNode.
		self visit: aRBBlockNode body.
		node
	]