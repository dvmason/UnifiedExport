tests
testSameType5
	| t1 t2 expectedType |
	"test that ('a -> 'b) -> ('a -> 'b) is not the same as ('b -> 'a) -> ('a -> 'b)"
	t1 := ToyTVar newvar.
	t2 := ToyTVar newvar.
	expectedType := ToyTArrow type: (ToyTArrow type: t1 arrow: t2)  arrow: (ToyTArrow type: t1 arrow: t2).  
	self deny: (ToyTArrow type: (ToyTArrow type: t2 arrow: t1) arrow: (ToyTArrow type: t1 arrow: t2)) sameType: expectedType.
