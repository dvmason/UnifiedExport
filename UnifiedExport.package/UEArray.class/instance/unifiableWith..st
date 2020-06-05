type unification
unifiableWith: aUEType
	(self isSameSet: aUEType) ifTrue: [ ^ self ].
	self unifiableCommon: aUEType.
	aUEType find isWild ifTrue: [ ^ aUEType unifiableWith: self ].
	valueType unifiableWith: aUEType valueType.
