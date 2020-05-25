type unification
isUnifiableWith: aUEType
	self find == aUEType find ifTrue: [ ^ true ].
	aUEType class == self class ifFalse: [ ^ false ].
	(valueType isUnifiableWith: (aUEType valueType)) ifFalse: [ ^ false ].
	self union: aUEType.
	^ true