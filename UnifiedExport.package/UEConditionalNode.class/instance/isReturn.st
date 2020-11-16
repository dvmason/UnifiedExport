testing
isReturn
	t ifNil: [ ^ false ].
	f ifNil: [ ^ false ].
	^ t isReturn and: [ f isReturn ]