type unification
unifiableWith: aUEType
	super unifiableWith: aUEType.
	resultType unifiableWith: aUEType resultType.
	(argTypes size == aUEType argTypes size) ifFalse: [ ^ self notUnifiable ].
	argTypes with: aUEType argTypes do: [: mine : other |
		mine unifiableWith: other.
	].
