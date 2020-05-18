type unification
isUnifiableWith: aUEType
	self find == aUEType find ifTrue: [ ^ true ].
	aUEType class == self class ifFalse: [ ^ false ].
	(argType isUnifiableWith: (aUEType argType)) ifFalse: [ ^ false ].
	self union: aUEType.
	^ true