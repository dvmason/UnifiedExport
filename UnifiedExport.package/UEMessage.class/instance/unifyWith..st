type unification
unifyWith: aUEType 
	self unifiableWith: aUEType.
	resultType unifyWith: aUEType resultType.
	argTypes with: aUEType argTypes do: [: mine : other |
		mine unifyWith: other.
	].
	super unifyWith: aUEType.
	^ self union: aUEType