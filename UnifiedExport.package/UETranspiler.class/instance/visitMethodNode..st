visitor
visitMethodNode: aRBMethodNode 
	| methodNode |
	methodNode := UEMethodNode method: aRBMethodNode.
	" more to come "
	(methodNode statements isEmpty or: [methodNode statements last isReturn not]) ifTrue: [
		methodNode addStatement: (UEReturnNode new expression: UESelfNode new).
	].
	^ methodNode 
	