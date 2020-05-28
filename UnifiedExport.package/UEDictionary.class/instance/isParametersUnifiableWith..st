type unification
isParametersUnifiableWith: aUEType
	^(keyType isUnifiableWith: (aUEType keyType)) and: (valueType isUnifiableWith: (aUEType valueType))