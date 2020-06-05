as yet unclassified
uETypeFor: anObject 
	^ classMap at: anObject class ifAbsentPut: [ UEClassType for: anObject class ]