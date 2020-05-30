type unification
isParametersUnifiableWith: aUEType
	(targetType unifiableWith: aUEType targetType) ifFalse: [ ^ false ].
	(resultType unifiableWith: aUEType resultType) ifFalse: [ ^ false ].
	(argTypes size == aUEType argTypes size) ifFalse: [ ^ false ].
	argTypes with: aUEType argTypes do: [: mine : other |
		(mine unifiableWith: other) ifFalse: [ ^ false ].
	].
	^ true