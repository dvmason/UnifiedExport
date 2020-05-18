testing
test2SetsOpposite
	u1 union: u2.
	u3 union: u4.
	self assert: (u1 sameSet: u2).
	self assert: (u2 sameSet: u1).
	self assert: (u3 sameSet: u4).
	self assert: (u4 sameSet: u3).
	self deny: (u1 sameSet: u3).
	self deny: (u1 sameSet: u4).
	self deny: (u2 sameSet: u3).
	self deny: (u2 sameSet: u4).
	self deny: (u3 sameSet: u1).
	self deny: (u3 sameSet: u2).
	self deny: (u4 sameSet: u1).
	self deny: (u4 sameSet: u2).
	u4 union: u1. " only difference from test2Sets "
	self assert: (u1 sameSet: u2).
	self assert: (u4 sameSet: u1).
	self assert: (u1 sameSet: u4).
	self assert: (u1 sameSet: u3).
