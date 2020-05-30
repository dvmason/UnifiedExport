type unification
unifyWith: aUEType 
	self unifiableWith: aUEType.
	targetType unifyWith: aUEType targetType.
	resultType unifyWith: aUEType resultType.
	argTypes with: aUEType argTypes do: [: mine : other |
		mine unifyWith: other.
	].
	super unifyWith: aUEType.
	^ self union: aUEType