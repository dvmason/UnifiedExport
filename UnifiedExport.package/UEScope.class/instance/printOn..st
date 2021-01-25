printing
printOn: aStream
	aStream nextPutAll: self className.
	tag ifNotNil: [ aStream nextPut: $:;nextPutAll: tag ].
	map isEmptyOrNil ifFalse: [ map printOn: aStream ].
