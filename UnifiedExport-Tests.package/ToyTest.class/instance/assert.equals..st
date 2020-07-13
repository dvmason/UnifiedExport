asserting
assert: actual equals: expected 
	self assert: (actual isSameType: expected env: IdentityDictionary new)
			description: [self comparingStringBetween: actual and: expected]