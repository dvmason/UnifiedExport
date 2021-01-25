visiting
visitMethod: aRBMethodNode
	self addTempVariablesToCurrentScope: aRBMethodNode.
	self visit: aRBMethodNode body.
	