type unification
unifiableWith: aUEType
	(self isSameSet: aUEType) ifTrue: [ ^ self ].
	aUEType find isWild ifTrue: [ ^ aUEType unifiableWith: self ].
	self unifiableCommon: aUEType.
	classRef == aUEType classRef ifFalse: [ ^ self notUnifiable ].
