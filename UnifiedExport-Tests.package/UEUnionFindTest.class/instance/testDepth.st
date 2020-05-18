testing
testDepth
	u1 union: u2.
	u1 union: u3.
	u1 union: u4.
	self assert: u1 parent equals: nil.
	self assert: u4 parent parent equals: nil.
