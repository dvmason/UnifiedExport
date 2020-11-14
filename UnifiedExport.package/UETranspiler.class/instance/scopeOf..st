visiting
scopeOf: aRBVariableNode 
	aRBVariableNode isDefinedByBlock ifTrue: [ ^ typeChecker blockScope ].
	aRBVariableNode isInstanceVariable ifTrue: [ ^ typeChecker instanceScope ].
	aRBVariableNode isClassVariable ifTrue: [ ^ typeChecker classScope ].
	aRBVariableNode isGlobalVariable ifTrue: [ ^ typeChecker globalScope ].
	^ typeChecker methodScope