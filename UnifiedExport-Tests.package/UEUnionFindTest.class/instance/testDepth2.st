testing
testDepth2
	u1 union: u2.
	u2 union: u3.
	u3 union: u4.
	u4 union: u5.
	u5 union: u6.
	self assert: u1 parent equals: nil.
	self assert: u5 parent parent equals: nil.
