visiting
visitMethodNode: aRBMethodNode
	" more to come "
	statementTarget := methodNode statements.
	self visit: aRBMethodNode body.
	(statementTarget isEmpty or: [statementTarget last isReturn not]) ifTrue: [
		statementTarget addStatement: (UEReturnNode new expression: (self visitSelfNode: nil)).
	].
	^ methodNode 
	