tests
testLookupKeySimple
	|  int lukClass lukInstance result resultType lukKeyMessage |
	int := typeChecker typeOfObject: 42.
	lukClass := typeChecker typeOfObject: LookupKey.
	lukKeyMessage := lukClass send: #key: with: {int}.
	lukInstance := lukKeyMessage resultType.
	result := (lukInstance send: #key) resultType.
	self assert: result hasType: int.
	resultType := typeChecker principleType: (typeChecker typeOf: LookupKey class>>#key) resultType.
	self assert: resultType hasType: int.
