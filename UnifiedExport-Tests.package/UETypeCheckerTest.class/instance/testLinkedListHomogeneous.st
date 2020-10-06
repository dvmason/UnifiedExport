tests
testLinkedListHomogeneous
	| int result resultType llInstance |
	int := typeChecker typeOfObject: 42.
	llInstance := typeChecker externalMessage: #new class: LinkedList.
	llInstance send: #add: with: {int}.
	llInstance send: #add: with: {int}.
	result := (llInstance send: #first) resultType.
	self assert: result hasType: int.
	resultType := typeChecker principleType: (typeChecker typeOf: LookupKey>>#key) resultType.
	self assert: resultType hasType: int.
