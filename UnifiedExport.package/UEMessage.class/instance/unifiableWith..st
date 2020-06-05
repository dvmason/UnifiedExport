type unification
unifiableWith: aUEMessage
	(self isSameSet: aUEMessage) ifTrue: [ ^ self ].
	aUEMessage class == self class ifFalse: [ ^ self notUnifiable ].
	(resultType unifiableWith: (aUEMessage resultType)).
	(argTypes size == aUEMessage argTypes size) ifFalse: [  ^ self notUnifiable ].
	argTypes with: aUEMessage argTypes do: [: mine : other |
		(mine unifiableWith: other).
	].	
