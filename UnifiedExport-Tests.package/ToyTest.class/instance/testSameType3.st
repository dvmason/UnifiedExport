tests
testSameType3
   "tests that a -> (a -> b) is the same as b-> (a -> b)"
	| t1 t2 expectedType |
	t1 := ToyTVar newvar.
	t2 := ToyTVar newvar.
	expectedType := ToyTArrow type: t1  arrow: (ToyTArrow type: t1 arrow: t2).
	self deny: (ToyTArrow type: t2 arrow: (ToyTArrow type: t1 arrow: t2)) equals: expectedType.
