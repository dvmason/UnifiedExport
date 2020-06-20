asserting
assert: actual sameType: expected 
	self assert: (actual isSameType: expected env: IdentityDictionary new)
			description: [self comparingStringBetween: actual and: expected]