visiting
visitAssignmentNode: aRBAssignmentNode 
	^ UEAssignmentNode new variable: (self visit: aRBAssignmentNode variable) value: (self visit: aRBAssignmentNode value) resultRequired