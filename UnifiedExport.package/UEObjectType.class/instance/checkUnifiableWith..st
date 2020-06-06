type unification
checkUnifiableWith: aUEType
	aUEType class == self class ifFalse: [ ^ self notUnifiable ].
