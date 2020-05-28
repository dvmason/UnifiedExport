type unification
isParametersUnifiableWith: aUEType
	(targetType isUnifiableWith: aUEType targetType) ifFalse: [ ^ false ].
	(resultType isUnifiableWith: aUEType resultType) ifFalse: [ ^ false ].
	(argTypes size == aUEType argTypes size) ifFalse: [ ^ false ].
	argTypes with: aUEType argTypes do: [: mine : other |
		(mine isUnifiableWith: other) ifFalse: [ ^ false ].
	].
	^ true