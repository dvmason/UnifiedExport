type unification
unifyWith: aUEType 
	self unifiableWith: aUEType.
	valueType unifyWith: aUEType valueType.
	^ self union: aUEType