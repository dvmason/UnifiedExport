testing
test2Sets
	u1 union: u2.
	u3 union: u4.
	self assert: (u1 isSameSet: u2).
	self assert: (u2 isSameSet: u1).
	self assert: (u3 isSameSet: u4).
	self assert: (u4 isSameSet: u3).
	self deny: (u1 isSameSet: u3).
	self deny: (u1 isSameSet: u4).
	self deny: (u2 isSameSet: u3).
	self deny: (u2 isSameSet: u4).
	self deny: (u3 isSameSet: u1).
	self deny: (u3 isSameSet: u2).
	self deny: (u4 isSameSet: u1).
	self deny: (u4 isSameSet: u2).
	u1 union: u4.
	self assert: (u1 isSameSet: u2).
	self assert: (u4 isSameSet: u1).
	self assert: (u1 isSameSet: u4).
	self assert: (u1 isSameSet: u3).
