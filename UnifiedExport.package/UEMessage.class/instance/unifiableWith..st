type unification
unifiableWith: aUEMessage
	super unifiableWith: aUEMessage.
	(resultType unifiableWith: (aUEMessage resultType)).
	(argTypes size == aUEMessage argTypes size) ifFalse: [  ^ self notUnifiable ].
	argTypes with: aUEMessage argTypes do: [: mine : other |
		(mine unifiableWith: other).
	].	
