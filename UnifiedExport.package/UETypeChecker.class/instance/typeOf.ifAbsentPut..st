accessing
typeOf: anObject ifAbsentPut: aBlock
	^ typeMap at: anObject ifAbsentPut: aBlock