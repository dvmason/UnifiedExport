tests
testLookupKeySimple
	|  int lukClass lukInstance result resultType |
	int := typeChecker typeOfObject: 42.
	lukClass := typeChecker typeOfObject: LookupKey class.
	lukInstance := lukClass send: #key: with: {int}.
	result := lukInstance resultType send: #key with: #().
	self assert: result resultType hasType: int.
	resultType := typeChecker principleType: (typeChecker typeOf: LookupKey>>#key) resultType.
	self assert: resultType hasType: int.
