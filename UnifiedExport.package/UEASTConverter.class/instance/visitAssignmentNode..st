visiting
visitAssignmentNode: aRBAssignmentNode
	| variable value |
	variable := self visitAsDestination: aRBAssignmentNode variable.
	value := (self visit: aRBAssignmentNode value) resultRequired.
	typeChecker assign: variable gets: value.
	^ UEAssignmentNode new variable: variable value: value