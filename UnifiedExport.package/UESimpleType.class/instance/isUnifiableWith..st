type unification
isUnifiableWith: aUEType
	(self isSameSet: aUEType) ifTrue: [ ^ true ].
	aUEType find isWild ifTrue: [ ^ aUEType isUnifiableWith: self ].
	self class == aUEType class ifFalse: [ ^ false ].
	self tag == aUEType tag ifFalse: [ ^ false ].
	self union: aUEType.
	^ true