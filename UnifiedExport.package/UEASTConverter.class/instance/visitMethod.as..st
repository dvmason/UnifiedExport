visiting
visitMethod: aRBMethodNode as: method
	currentScope := method instanceScope newMethodScope: aRBMethodNode selector.
	currentScope at: #self put: UESelfNode new.
	currentScope at: #_return put: UEType new.
	self halt.
	self flag: #ToDo. " more to come "
	methodOrBlock := method.
	self visit: aRBMethodNode body.
	(method statements isEmpty or: [method statements last isReturn not]) ifTrue: [
		method addStatement: (UEReturnNode new expression: (self visitSelfNode: nil)).
	].
	^ method 
	