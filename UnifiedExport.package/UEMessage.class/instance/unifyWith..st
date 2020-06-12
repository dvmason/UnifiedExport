type unification
unifyWith: aUEMessage 
	self unifiableWith: aUEMessage.
	resultType unifyWith: aUEMessage resultType.
	argTypes with: aUEMessage argTypes do: [: mine : other |
		mine unifyWith: other.
	].
	resultUsed ifTrue: [ aUEMessage useResult ].
	aUEMessage resultUsed ifTrue: [ self useResult ].
	^ self union: aUEMessage