type unification
unifyWith: aUEType 
	self unifiableWith: aUEType.
	^ self union: aUEType