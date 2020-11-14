visitor
visitMethodNode: aRBMethodNode 
	methodNode := UEMethodNode method: aRBMethodNode.
	" more to come "
	self visit: aRBMethodNode body.
	(methodNode statements isEmpty or: [methodNode statements last isReturn not]) ifTrue: [
		methodNode addStatement: (UEReturnNode new expression: (self visitSelfNode: nil)).
	].
	^ methodNode 
	