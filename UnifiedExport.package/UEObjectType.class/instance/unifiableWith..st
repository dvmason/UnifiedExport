type unification
unifiableWith: aUEType
	(self isSameSet: aUEType) ifTrue: [ ^ self ].
	aUEType class == self class ifFalse: [ ^ self notUnifiable ].
	self methodsUnifiableWith: aUEType methods.
	aUEType methodsUnifiableWith: self.