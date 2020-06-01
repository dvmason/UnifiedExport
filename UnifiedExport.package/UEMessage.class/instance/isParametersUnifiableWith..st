type unification
isParametersUnifiableWith: aUEType
	(resultType unifiableWith: aUEType resultType) ifFalse: [ ^ false ].
	(argTypes size == aUEType argTypes size) ifFalse: [ ^ false ].
	argTypes with: aUEType argTypes do: [: mine : other |
		(mine unifiableWith: other) ifFalse: [ ^ false ].
	].
	^ true