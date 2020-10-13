comparing
isSameType: aToyTyp env: aMap
	self class = aToyTyp class ifFalse: [ ^ tv isSameType: aToyTyp env: aMap ].
	aMap at: aToyTyp ifPresent: [: value | ^ self == value ].
	^ self == aToyTyp