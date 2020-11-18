testing
isReturn
	statements isEmpty ifTrue: [ ^ false ].
	^ statements last isReturn