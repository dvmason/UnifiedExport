printing
printNestedOn: aStream
	aStream nextPut: $(.
	typ1 printOn: aStream.
	aStream nextPutAll: ' -> '.
	typ2 printOn: aStream.
	aStream nextPut: $).
	