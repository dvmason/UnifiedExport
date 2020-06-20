comparing
addTypeMap: aToyTyp to: aMap
	self class = aToyTyp class ifFalse: [ ^ false ].
	^ (typ1 addTypeMap: aToyTyp typ1 to: aMap) and: [
			typ2 addTypeMap: aToyTyp typ2 to: aMap
		]