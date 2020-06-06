type unification
checkUnifiableWith: aUEType
	super checkUnifiableWith: aUEType.
	classRef == aUEType classRef ifFalse: [ ^ self notUnifiable ].
