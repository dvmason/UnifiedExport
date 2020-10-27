printing
printOn: aStream
	aStream nextPutAll: 'fun ';nextPutAll: varname;nextPutAll: ' -> '.
	exp printOn: aStream.

	