visiting
scopeOf: aRBVariableNode 
	aRBVariableNode isDefinedByBlock ifTrue: [ ^ currentScope blockScope ].
	aRBVariableNode isInstanceVariable ifTrue: [ ^ currentScope instanceScope ].
	aRBVariableNode isClassVariable ifTrue: [ ^ currentScope classScope ].
	aRBVariableNode isGlobalVariable ifTrue: [ ^ currentScope globalScope ].
	^ currentScope methodScope