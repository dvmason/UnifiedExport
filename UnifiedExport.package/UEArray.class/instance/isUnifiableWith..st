type unification
isUnifiableWith: aUEType
	(self isSameSet: aUEType) ifTrue: [ ^ true ].
	aUEType class == self class ifFalse: [ ^ false ].
	(valueType isUnifiableWith: (aUEType valueType)) ifFalse: [ ^ false ].
	self union: aUEType.
	^ true