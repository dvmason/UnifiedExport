testing
testDepth3
	u1 union: u2.
	u6 union: u5.
	u5 union: u4.
	u4 union: u3.
	u3 union: u1.
	self assert: u1 parent parent equals: nil.
	self assert: u2 parent parent parent equals: nil.
	self assert: u3 parent parent equals: nil.
	self assert: u4 parent parent equals: nil.
	self assert: u6 parent equals: nil.
