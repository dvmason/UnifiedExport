sets support
union: other
	| myRoot otherRoot |
	myRoot := self find.
	otherRoot := other find.
	myRoot == otherRoot ifTrue: [ ^ myRoot ].
	(otherRoot greaterRank: myRoot) ifTrue: [ ^ myRoot parent: otherRoot ].
	(myRoot greaterRank: otherRoot) ifTrue: [ ^ otherRoot parent: myRoot ].
	otherRoot parent: myRoot.
	^ myRoot bumpRank