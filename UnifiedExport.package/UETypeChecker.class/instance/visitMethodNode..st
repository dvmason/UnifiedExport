visiting
visitMethodNode: aRBMethodNode
	methodType := self methodType: aRBMethodNode method.
	methodType targetType: (self typeOfClass: aRBMethodNode methodClass).
	super visitMethodNode: aRBMethodNode.
