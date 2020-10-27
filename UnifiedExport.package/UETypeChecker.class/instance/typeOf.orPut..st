accessing
typeOf: anObject orPut: aBlock
	^ typeMap at: anObject ifAbsentPut: aBlock