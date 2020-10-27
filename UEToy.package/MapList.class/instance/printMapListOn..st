printing
printMapListOn: aStream
	aStream nextPut: $,.
	key printOn: aStream.
	aStream nextPutAll: '->'.
	value printOn: aStream.
	nextLink printMapListOn: aStream.
