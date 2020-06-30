tests
testLookupKeyTwiceNumber
	| int lukClass lukInstance result float lukInstanceF resultF resultType |
	int := typeChecker typeOfObject: 42.
	lukClass := typeChecker typeOfObject: LookupKey class.
	lukInstance := (lukClass send: #key: with: {int}) resultType.
	result := (lukInstance send: #key) resultType.
	self assert: result hasType: int.
	float := typeChecker typeOfObject: 3.1415.
	lukInstanceF := (lukClass send: #key: with: {float}) resultType.
	resultF := (lukInstanceF send: #key) resultType.
	self assert: resultF hasType: float.
	resultType := typeChecker principleType: (typeChecker typeOf: LookupKey>>#key) resultType.
	self assert: resultType hasType: (typeChecker typeOf: Number).
