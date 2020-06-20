asserting
deny: actual sameType: expected 
	self deny: (actual isSameType: expected env: nil)
			description: [self comparingStringBetween: actual and: expected]