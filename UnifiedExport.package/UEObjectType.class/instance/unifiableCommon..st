type unification
unifiableCommon: aUEType
	aUEType class == self class ifFalse: [ ^ self notUnifiable ].
	self methodsUnifiableWith: aUEType methods.
	aUEType methodsUnifiableWith: methods.