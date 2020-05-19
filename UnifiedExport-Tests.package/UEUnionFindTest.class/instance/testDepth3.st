testing
testDepth3
	u1 union: u2.
	u6 union: u5.
	u5 union: u4.
	u4 union: u3.
	u3 union: u1.
	self assert: u1 depth equals: 2.
	self assert: u2 depth equals: 3.
	self assert: u3 depth equals: 2.
	self assert: u4 depth equals: 2.
	self assert: u6 depth equals: 1.
