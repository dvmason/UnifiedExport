type unification
unifiableWith: aUEType
	(self isSameSet: aUEType) ifTrue: [ ^ self ].
	aUEType find isWild ifTrue: [ ^ aUEType unifiableWith: self ].
	self class == aUEType class ifFalse: [ ^ self notUnifiable ].
	self tag == aUEType tag ifFalse: [ ^ self notUnifiable ].
