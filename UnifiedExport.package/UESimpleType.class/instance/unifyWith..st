type unification
unifyWith: aUEType
	self unifiableWith: aUEType.
	super unifyWith: aUEType.
	^ self union: aUEType