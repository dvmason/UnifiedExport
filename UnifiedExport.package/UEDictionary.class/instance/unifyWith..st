type unification
unifyWith: aUEType 
	self unifiableWith: aUEType.
	keyType unifyWith: aUEType keyType.
	valueType unifyWith: aUEType valueType.
	super unifyWith: aUEType.
	^ self union: aUEType