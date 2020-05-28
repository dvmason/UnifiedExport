type unification
isParametersUnifiableWith: aUEType
	^((targetType isUnifiableWith: (aUEType keyType)) 
			and: (resultType isUnifiableWith: (aUEType valueType))) 
				and: ((argTypes size) == (aUEType argTypes size))