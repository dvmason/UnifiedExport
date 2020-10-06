accessing
typeOf: anObject ifAbsent: aBlock
	^ typeMap at: anObject ifAbsent: aBlock