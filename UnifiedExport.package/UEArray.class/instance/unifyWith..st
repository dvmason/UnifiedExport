type unification
unifyWith: aUEType 
	self unifiableWith: aUEType.
	valueType unifyWith: aUEType valueType.
	super unifyWith: aUEType.
	^ self union: aUEType