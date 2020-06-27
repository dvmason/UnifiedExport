visiting
visitMethodNode: aRBMethodNode
	methodType := self typeOfMethod: aRBMethodNode method.
	methodType targetType: (self typeOfClass: aRBMethodNode methodClass).
	^ self scoped: methodType do: [
		super visitMethodNode: aRBMethodNode.
	]