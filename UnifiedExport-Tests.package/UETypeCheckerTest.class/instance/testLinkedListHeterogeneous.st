tests
testLinkedListHeterogeneous
	| int result resultType llInstance bool obj |
	int := typeChecker typeOfObject: 42.
	bool := typeChecker typeOfObject: true.
	obj := typeChecker typeOf: Object.
	llInstance := typeChecker externalCall: #new class: LinkedList.
	llInstance send: #add: with: {int}.
	llInstance send: #add: with: {bool}.
	result := (llInstance send: #first) resultType.
	self assert: result hasType: obj.
	resultType := typeChecker principleType: (typeChecker typeOf: LookupKey>>#key) resultType.
	self assert: resultType hasType: obj.
