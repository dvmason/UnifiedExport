visiting
visitMethodNode: aRBMethodNode
	methodType := UEMessage selector: aRBMethodNode selector.
	typeMap at: aRBMethodNode method put: methodType.
	methodType targetType: (self uETypeForClass: aRBMethodNode methodClass).
	super visitMethodNode: aRBMethodNode.
