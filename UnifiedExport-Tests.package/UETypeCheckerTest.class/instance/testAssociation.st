tests
testAssociation
	| int aClass anInstance result bool resultType resultB |
	int := typeChecker typeOfObject: 42.
	bool := typeChecker typeOfObject: true.
	aClass := typeChecker typeOfObject: Association.
	anInstance := (aClass send: #key:value: with: {int.bool}) resultType.
	result := (anInstance send: #key) resultType.
	self assert: result hasType: int.
	resultB := (anInstance send: #value) resultType.
	self assert: resultB hasType: bool.
	resultType := typeChecker principleType: (typeChecker typeOf: Association>>#key) resultType.
	self assert: resultType hasType: (typeChecker typeOf: int).
	resultType := typeChecker principleType: (typeChecker typeOf: Association>>#value) resultType.
	self assert: resultType hasType: (typeChecker typeOf: bool).
