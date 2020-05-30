type unification
unifiableWith: aUEType
	super unifiableWith: aUEType.
	valueType unifiableWith: aUEType valueType.
