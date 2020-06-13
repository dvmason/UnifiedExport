printing
printOn: aStream
	aStream nextPutAll: 'let ';nextPutAll: varname;nextPutAll: ' = '.
	exp1 printOn: aStream.
	aStream nextPutAll: ' in '.
	exp2 printOn: aStream.
