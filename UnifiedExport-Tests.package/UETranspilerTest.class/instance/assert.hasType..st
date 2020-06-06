asserting
assert: anObject hasType: aUEType
	self assert: ((transpiler typeOf: anObject) isSameSet: aUEType)