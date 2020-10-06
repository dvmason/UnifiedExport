printing
printOn: aStream
	super printOn: aStream.
	aStream nextPut: $(.
	targetType printOn: aStream.
	aStream nextPut: $ .
	aStream nextPutAll: selector.
	aStream nextPutAll: ' -> '.
	resultType printOn: aStream.
	aStream nextPut: $).
