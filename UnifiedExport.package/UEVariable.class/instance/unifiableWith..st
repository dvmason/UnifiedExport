type unification
unifiableWith: aUEType
	self find isWild ifTrue: [ ^ self ].
	self find unifiableWith: aUEType find.
