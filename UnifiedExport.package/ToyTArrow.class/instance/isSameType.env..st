comparing
isSameType: aToyTyp env: aMapList 
	self class = aToyTyp class ifFalse: [ ^ false ].
	(typ1 isSameType: aToyTyp typ1 env: aMapList) ifFalse: [ ^ false ].
	^ typ2 isSameType: aToyTyp typ2 env: aMapList