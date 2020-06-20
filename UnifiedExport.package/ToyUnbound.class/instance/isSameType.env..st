as yet unclassified
isSameType: aToyTyp env: aMapList 
	| nextMapList |
	self class = aToyTyp class ifFalse: [ ^ false ].
	(aMapList includesKey: string)
	ifTrue: [ 
		^(aMapList at: string) value = aToyTyp string.
	].
	(aMapList includesKey: aToyTyp string)
	ifTrue: [ 
		^(aMapList at: (aToyTyp string)) value = string.
	].
	nextMapList := MapList new.
	nextMapList add: string arrow: aToyTyp string prependTo: aMapList.
	^true.