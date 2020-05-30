type unification
unifiableWith: aUEType
	super unifiableWith: aUEType.
	keyType unifiableWith: aUEType keyType.
	valueType unifiableWith: aUEType valueType.
