tests
testLookupKeyTwice
	| int lukClass lukInstance result bool lukInstanceB resultB resultType |
	int := typeChecker typeOfObject: 42.
	lukClass := typeChecker typeOfObject: LookupKey class.
	lukInstance := lukClass send: #key: with: {int}.
	result := lukInstance resultType send: #key with: #().
	self assert: result resultType hasType: int.
	bool := typeChecker typeOfObject: true.
	lukInstanceB := lukClass send: #key: with: {bool}.
	resultB := lukInstanceB resultType send: #key with: #().
	self assert: resultB resultType hasType: bool.
	resultType := typeChecker principleType: (typeChecker typeOf: LookupKey>>#key) resultType.
	self assert: resultType hasType: (typeChecker typeOf: Object).
