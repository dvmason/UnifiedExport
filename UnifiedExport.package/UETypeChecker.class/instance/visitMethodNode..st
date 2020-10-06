visiting
visitMethodNode: aRBMethodNode
	methodType := self typeOfMethod: aRBMethodNode method.
	self flag: #ToDo. " set target type properly "
"	methodType targetType: (self typeOfClass: aRBMethodNode methodClass).
"	^ self scoped: methodType do: [
		super visitMethodNode: aRBMethodNode.
	]