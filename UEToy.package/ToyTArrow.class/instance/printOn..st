printing
printOn: aStream
	typ1 printNestedOn: aStream.
	aStream nextPutAll: ' -> '.
	typ2 printNestedOn: aStream.

	