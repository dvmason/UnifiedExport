visiting
scopeOf: aRBVariableNode 
	aRBVariableNode isDefinedByBlock ifTrue: [ ^ transpiler blockScope ].
	aRBVariableNode isInstanceVariable ifTrue: [ ^ transpiler instanceScope ].
	aRBVariableNode isClassVariable ifTrue: [ ^ transpiler classScope ].
	aRBVariableNode isGlobalVariable ifTrue: [ ^ transpiler globalScope ].
	^ transpiler methodScope