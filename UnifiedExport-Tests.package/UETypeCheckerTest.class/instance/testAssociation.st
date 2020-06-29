tests
testAssociation
	| int aClass anInstance result bool resultType resultB |
	int := typeChecker typeOfObject: 42.
	bool := typeChecker typeOfObject: true.
	aClass := typeChecker typeOfObject: Association class.
	anInstance := aClass send: #key:value: with: {int.bool}.
	result := anInstance resultType send: #key with: #().
	self assert: result resultType hasType: int.
	resultB := anInstance resultType send: #value with: #().
	self assert: resultB resultType hasType: bool.
	resultType := typeChecker principleType: (typeChecker typeOf: Association>>#key) resultType.
	self assert: resultType hasType: (typeChecker typeOf: int).
	resultType := typeChecker principleType: (typeChecker typeOf: Association>>#value) resultType.
	self assert: resultType hasType: (typeChecker typeOf: bool).
