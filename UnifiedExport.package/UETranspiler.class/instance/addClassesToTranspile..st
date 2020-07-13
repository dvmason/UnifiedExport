public
addClassesToTranspile: aCollectionOfClasses
	aCollectionOfClasses do: [: aClass |
		(classes includes: aClass) ifFalse: [
			aClass isInstanceSide ifTrue: [ self transpileClass: aClass classSide ].
			classes add: aClass.
			moreToProcess := true.
			aClass superclass ifNotNil: [: sClass | self transpileClass: sClass ].
	]].
