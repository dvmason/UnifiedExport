type unification
unifiableWith: other
	| myRoot otherRoot |
	myRoot := self find.
	otherRoot := other find.
	myRoot == otherRoot ifTrue: [ ^ self ].
	myRoot isWild ifTrue: [ ^ self ].
	otherRoot isWild ifTrue: [ ^ self ].
	myRoot class == otherRoot class ifFalse: [ ^ self notUnifiable ].
	myRoot anyOne checkUnifiableWith: otherRoot anyOne.
