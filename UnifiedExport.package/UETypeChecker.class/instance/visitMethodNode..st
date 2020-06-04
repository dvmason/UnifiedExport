visiting
visitMethodNode: aRBMethodNode 
	methodType := UEMessage selector: aRBMethodNode selector.
	typeMap at: aRBMethodNode method put: methodType.
	super visitMethodNode: aRBMethodNode.
