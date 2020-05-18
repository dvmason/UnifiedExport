testing
testSame
	self deny: (u1 sameSet: u2).
	self assert: ((u1 union: u2) sameSet: u2).
	self assert: (u1 sameSet: u2).