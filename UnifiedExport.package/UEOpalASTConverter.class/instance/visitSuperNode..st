visiting
visitSuperNode: aRBVariableNode 
	^ (UESelfNode with: (transpiler currentScope at: #self)) target: transpiler currentClass superclass