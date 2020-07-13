accessing
uETypeForClass: aClass 
	^ classMap at: aClass ifAbsentPut: [ UEClassType for: aClass ]