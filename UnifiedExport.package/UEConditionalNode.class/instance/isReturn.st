testing
isReturn
	trueBranch ifNil: [ ^ false ].
	falseBranch ifNil: [ ^ false ].
	^ trueBranch isReturn and: [ falseBranch isReturn ]