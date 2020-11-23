visiting
visitBlockNode: aRBBlockNode
	| savedScope node savedNode |
	savedNode := methodOrBlockNode.
	savedScope := currentScope.
	currentScope := savedScope newBlockScope.
	[
		node := UEBlockNode new scope: currentScope.
		self flag: #ToDo. " add argument handling "
		methodOrBlockNode := node.
		self halt.
		self visit: aRBBlockNode body.
		^ node
	] ensure: [
		currentScope := savedScope.
		methodOrBlockNode := savedNode
	]