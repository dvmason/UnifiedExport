type unification
unifiableWith: aUEType
	super unifiableWith: aUEType.
	targetType unifiableWith: aUEType targetType.
	resultType unifiableWith: aUEType resultType.
	(argTypes size == aUEType argTypes size) ifFalse: [ ^ self notUnifiable ].
	argTypes with: aUEType argTypes do: [: mine : other |
		mine unifiableWith: other.
	].
