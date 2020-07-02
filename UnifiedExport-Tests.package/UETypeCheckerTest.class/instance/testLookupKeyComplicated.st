tests
testLookupKeyComplicated
	| int lukClass lukInstance result bool lukInstanceB resultB resultType |
	int := typeChecker typeOfObject: 42.
	lukClass := typeChecker typeOfObject: LookupKey class.
	lukInstance := (lukClass send: #key: with: {int}) resultType.
	result := (lukInstance send: #key) resultType.
	self assert: result hasType: int.
	int send: #negated.
	bool := typeChecker typeOfObject: true.
	bool send: #not.
	lukInstanceB := (lukClass send: #key: with: {bool}) resultType.
	resultB := (lukInstanceB send: #key) resultType.
	self assert: resultB hasType: bool.
	resultType := typeChecker principleType: (typeChecker typeOf: LookupKey>>#key) returnType.
	self assert: resultType equals: (typeChecker typeOf: Object).

