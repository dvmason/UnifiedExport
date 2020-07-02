tests
testLookupKeyHeterogeneous
	| int lukClass lukInstance result bool resultType resultB obj |
	int := typeChecker typeOfObject: 42.
	lukClass := typeChecker typeOfObject: LookupKey class.
	lukInstance := (lukClass send: #key: with: {int}) resultType.
	result := (lukInstance send: #key) resultType.
	self assert: result hasType: int.
	int send: #negated.
	bool := typeChecker typeOfObject: true.
	bool send: #not.
	lukInstance send: #key: with: {bool}.
	resultB := (lukInstance send: #key) resultType.
	obj := typeChecker typeOf: Object.
	self assert: resultB resultType hasType: obj.
	resultType := typeChecker principleType: (typeChecker typeOf: LookupKey>>#key) returnType.
	self assert: resultType equals: obj.

