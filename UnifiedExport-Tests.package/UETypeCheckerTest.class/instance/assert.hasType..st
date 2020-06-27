asserting
assert: anObject hasType: aUEType
	self assert: ((typeChecker typeOf: anObject) isSameSet: aUEType)