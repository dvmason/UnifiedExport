tests
testEg5
	" test that the equals ignores ToyTVars"

	| t1 t2 typeA typeB |
	t1 := ToyTVar newvar.
	t2 := ToyTVar newvar. 
	
	typeA := ToyTArrow type: (ToyTArrow type: t1 arrow: t2) arrow: (ToyTVar tv: (ToyTArrow type: t1 arrow: t2)).
	typeB := ToyTArrow type: (ToyTArrow type: t1 arrow: t2) arrow: (ToyTArrow type: t1 arrow: t2).
	self assert: typeA equals: typeB. 
	self assert: typeB equals: typeA. 

	typeA := ToyTArrow type: (ToyTVar tv: (ToyTArrow type: t1 arrow: t2)) arrow: (ToyTArrow type: t1 arrow: t2).
	typeB := ToyTArrow type: (ToyTArrow type: t1 arrow: t2) arrow: (ToyTArrow type: t1 arrow: t2).
	self assert: typeA equals: typeB.
	self assert: typeB equals: typeA.
