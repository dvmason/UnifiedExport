accessing
typeOf: anObject
	^ typeMap at: anObject ifAbsent: [ nil ]