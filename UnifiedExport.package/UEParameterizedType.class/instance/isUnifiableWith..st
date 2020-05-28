type unification
isUnifiableWith: aUEType
	(self isSameSet: aUEType) ifTrue: [ ^ true ].
	aUEType class == self class ifFalse: [ ^ false ].
	(self isParametersUnifiableWith: aUEType ) ifFalse: [ ^ false ].
	self union: aUEType.
	^ true