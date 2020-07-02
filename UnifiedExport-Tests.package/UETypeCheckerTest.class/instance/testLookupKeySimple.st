tests
testLookupKeySimple
	|  int lukClass lukInstance result resultType |
	int := typeChecker typeOfObject: 42.
	lukClass := typeChecker typeOfObject: LookupKey class.
	lukInstance := (lukClass send: #key: with: {int}) resultType.
	result := (lukInstance send: #key) resultType.
	self assert: result hasType: int.
	resultType := typeChecker principleType: (typeChecker typeOf: LookupKey>>#key) resultType.
	self assert: resultType hasType: int.
