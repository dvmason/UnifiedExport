type unification
isUnifiableWith: aUEType
	self find isWild ifTrue: [ self union: aUEType. ^ true ].
	(self find isUnifiableWith: aUEType find) ifFalse: [ ^ false ].
	self union: aUEType.
	^ true