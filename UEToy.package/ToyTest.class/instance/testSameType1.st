tests
testSameType1
   "tests that a -> (b -> a) is the same as b-> (a -> b)"
	| t1 t2 expectedType |
	t1 := ToyTVar newvar.
	t2 := ToyTVar newvar.
	expectedType := ToyTArrow type: t1  arrow: (ToyTArrow type: t2 arrow: t1).
	self assert: (ToyTArrow type: t2 arrow: (ToyTArrow type: t1 arrow: t2)) equals: expectedType.
