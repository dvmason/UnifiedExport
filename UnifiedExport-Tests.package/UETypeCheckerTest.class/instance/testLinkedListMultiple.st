tests
testLinkedListMultiple
	| int result resultType llInstance bool llInstanceB |
	int := typeChecker typeOfObject: 42.
	bool := typeChecker typeOfObject: true.
	llInstance := typeChecker externalCall: #new class: LinkedList.
	llInstance send: #add: with: {int}.
	result := (llInstance send: #first) resultType.
	self assert: result hasType: int.
	llInstanceB := typeChecker externalCall: #new class: LinkedList.
	llInstanceB send: #add: with: {bool}.
	result := (llInstanceB send: #first) resultType.
	self assert: result hasType: int.
	resultType := typeChecker principleType: (typeChecker typeOf: LookupKey>>#key) resultType.
	self assert: resultType hasType: (typeChecker typeOf: Object).
