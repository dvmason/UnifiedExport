visiting
visitMethodNode: aRBMethodNode
	self flag: #ToDo. " more to come "
	methodOrBlockNode := methodNode.
	self visit: aRBMethodNode body.
	(methodNode statements isEmpty or: [methodNode statements last isReturn not]) ifTrue: [
		methodNode addStatement: (UEReturnNode new expression: (self visitSelfNode: nil)).
	].
	^ methodNode 
	