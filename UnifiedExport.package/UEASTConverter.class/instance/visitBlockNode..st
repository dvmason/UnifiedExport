visiting
visitBlockNode: aRBBlockNode
	| savedScope node savedNode |
	savedNode := methodOrBlock.
	savedScope := currentScope.
	currentScope := savedScope newBlockScope.
	^ [
		node := UEBlockNode new scope: currentScope.
		methodOrBlock := node.
		aRBBlockNode hasTemporaries | aRBBlockNode hasArguments ifTrue: [
			self flag: #ToDo. " add argument handling "
			self error: #debugging].
		self visit: aRBBlockNode body.
		node
	] ensure: [
		currentScope := savedScope.
		methodOrBlock := savedNode
	]