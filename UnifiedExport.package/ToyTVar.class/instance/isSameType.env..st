comparing
isSameType: aToyTyp env: aMap
	self class = aToyTyp class ifFalse: [ ^ false ].
	aMap at: aToyTyp ifPresent: [: value | ^ self == value ].
	^ self == aToyTyp