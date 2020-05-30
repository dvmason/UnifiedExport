private
typeOf: anObject
	^ typeMap at: anObject ifPresent: [: t | t find ]