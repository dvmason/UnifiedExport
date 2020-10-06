accessing
typeOf: name
	self halt.
	^ map at: name ifAbsentPut: [ UEVariable new ]