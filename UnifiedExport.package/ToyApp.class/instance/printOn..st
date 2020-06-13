printing
printOn: aStream
	exp1 printOn: aStream.
	aStream nextPut: $ .
	exp2 printOn: aStream.
