asserting
deny: actual sameType: expected 
	self deny: (actual isSameType: expected env: IdentityDictionary new)
			description: [self comparingStringBetween: actual and: expected]