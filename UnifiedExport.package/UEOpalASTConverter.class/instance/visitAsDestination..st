visiting
visitAsDestination: aRBNode
	| saveAssignment |
	saveAssignment := isAssigning.
	isAssigning := true.
	^ [
		self visit: aRBNode
	] ensure: [
		isAssigning := saveAssignment
	]