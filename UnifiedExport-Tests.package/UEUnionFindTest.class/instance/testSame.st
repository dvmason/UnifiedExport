testing
testSame
	self deny: (u1 isSameSet: u2).
	self assert: ((u1 union: u2) isSameSet: u2).
	self assert: (u1 isSameSet: u2).