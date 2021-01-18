visiting
visitReturnNode: aRBReturnNode
	| return |
	return := (self visit: aRBReturnNode value) resultRequired.
	typeChecker assign: (currentScope at: #_return) gets: return.
	^ UEReturnNode new expression: return