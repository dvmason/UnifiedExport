accessing
occurs: aTyp

	self == aTyp ifTrue: [ ^true ].
	aTyp isToyUnbound ifFalse: [ ^aTyp occurs: self. ].
	^false.