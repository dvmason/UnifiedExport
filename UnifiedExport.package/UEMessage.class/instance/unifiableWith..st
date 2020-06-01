type unification
unifiableWith: aUEType
	super unifiableWith: aUEType.
	(self parametersUnifiableWith: aUEType).
