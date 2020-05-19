testing
testDepth
	u1 union: u2.
	u1 union: u3.
	u1 union: u4.
	self assert: u1 depth equals: 1.
	self assert: u4 depth equals: 2.
