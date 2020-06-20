tests
testSameType
   "tests that a -> (b -> b) is the same as b-> (a -> a)"
	| t1 t2 expectedType |
	t1 := ToyTVar newvar.
	t2 := ToyTVar newvar.
	expectedType := ToyTArrow type: t1  arrow: (ToyTArrow type: t2 arrow: t2).
	self assert: (ToyTArrow type: t2 arrow: (ToyTArrow type: t1 arrow: t1)) sameType: expectedType.
