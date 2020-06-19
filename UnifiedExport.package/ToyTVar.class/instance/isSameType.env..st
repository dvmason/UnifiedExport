comparing
isSameType: aToyTyp env: aMapList
	self class = aToyTyp class ifFalse: [ ^ false ].
	(aMapList includesKey: tv) ifFalse: [ ^ 42 ].
	self halt.