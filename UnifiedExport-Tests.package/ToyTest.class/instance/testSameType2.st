tests
testSameType2
   "tests that a -> (a -> b) is the same as b-> (b -> a)"
	| t1 t2 expectedType |
	t1 := ToyTVar newvar.
	t2 := ToyTVar newvar.
	expectedType := ToyTArrow type: t2 arrow: (ToyTArrow type: t1  arrow: (ToyTArrow type: t1 arrow: t2)).
	self assert: (ToyTArrow type: t1 arrow: (ToyTArrow type: t2 arrow: (ToyTArrow type: t2 arrow: t1))) equals: expectedType.
