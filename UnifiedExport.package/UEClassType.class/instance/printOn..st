printing
printOn: aStream
	super printOn: aStream.
	aStream nextPut: $[.
	classRef printOn: aStream.
	aStream nextPut: $].
