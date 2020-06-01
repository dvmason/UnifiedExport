type unification
parametersUnifiableWith: aUEMessage
	(resultType unifiableWith: (aUEMessage resultType)).
	(argTypes size == aUEMessage argTypes size) ifFalse: [  ^ self notUnifiable ].
	argTypes with: aUEMessage argTypes do: [: mine : other |
		(mine unifiableWith: other).
	].