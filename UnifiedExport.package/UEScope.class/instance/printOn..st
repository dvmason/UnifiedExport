printing
printOn: aStream
	aStream nextPutAll: self className.
	tag ifNotNil: [ aStream nextPut: $:;nextPutAll: tag ].
	map ifNotEmpty: [ map printOn: aStream ].
