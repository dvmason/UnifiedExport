tests
testTypePrinting2
	| prettyPrintA prettyPrintB t1 t2 nestedTArrow |
	"test that ('a -> 'b) -> ('a -> 'b) is not the same as ('b -> 'a) -> ('a -> 'b)"
	t1 := ToyTVar newvar.
	t2 := ToyTVar newvar.
	nestedTArrow := ToyTVar tv: (ToyTArrow type: t1 arrow: t2).
	prettyPrintA := (ToyTArrow type: (ToyTArrow type: t1 arrow: t2) arrow: nestedTArrow) asString.
	prettyPrintB := (ToyTArrow type: (ToyTArrow type: t1 arrow: t2) arrow: (ToyTArrow type: t1 arrow: t2)) asString.  
	self assert: prettyPrintA = prettyPrintB.
