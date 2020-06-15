asserting
assert: actual sameType: expected 
	self assert: (actual isSameType: expected env: nil)
			description: [self comparingStringBetween: actual and: expected]