tests
testLookupKeyComplicated
	| int lukClass lukInstance result bool lukInstanceB resultB resultType |
	int := typeChecker typeOfObject: 42.
	lukClass := typeChecker typeOfObject: LookupKey class.
	lukInstance := lukClass send: #key: with: {int}.
	result := lukInstance resultType send: #key with: #().
	self assert: result resultType hasType: int.
	int send: #negated.
	bool := typeChecker typeOfObject: true.
	bool send: #not.
	lukInstanceB := lukClass send: #key: with: {bool}.
	resultB := lukInstanceB resultType send: #key with: #().
	self assert: resultB resultType hasType: bool.
	resultType := typeChecker principleType: (typeChecker typeOf: LookupKey>>#key) returnType.
	self assert: resultType equals: nil.

