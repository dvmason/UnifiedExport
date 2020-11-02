accessing
typeOf: name
	^ map at: name ifAbsentPut: [ UEVariable new ]