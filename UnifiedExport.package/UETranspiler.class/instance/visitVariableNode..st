visiting
visitVariableNode: aRBVariableNode
	^ UEVariableNode new scope: (self scopeOf: aRBVariableNode); name: aRBVariableNode name