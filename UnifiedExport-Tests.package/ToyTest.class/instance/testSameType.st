tests
testSameType
	| t1 t2 expectedType |
	t1 := ToyUnbound new.
	t2 := ToyUnbound new.
	expectedType := ToyTArrow type: t1  arrow: (ToyTArrow type: t2 arrow: t2).
	self assert: (ToyTArrow type: t2 arrow: (ToyTArrow type: t1 arrow: t1)) sameType: expectedType.
