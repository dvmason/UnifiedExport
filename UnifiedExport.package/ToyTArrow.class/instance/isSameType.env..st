comparing
isSameType: aToyTyp env: aMap
	self class = aToyTyp class ifFalse: [ ^ false ].
	^ (typ1 addTypeMap: aToyTyp typ1 to: aMap) and: [
			typ2 isSameType: aToyTyp typ2 env: aMap
		]