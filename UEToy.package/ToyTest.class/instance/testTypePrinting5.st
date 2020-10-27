tests
testTypePrinting5
	| prettyPrintA prettyPrintB t1 t2 t3 t4 nestedTArrow |
	"test that ('a -> 'b) -> ('a -> 'b) is the same string as ('a -> 'b) -> ('a -> 'b) 
	even though one ToyTArrow is nested in a ToyTVar"
	t1 := ToyTVar newvar.
	t2 := ToyTVar newvar.
	t3 := ToyTVar newvar.
	t4 := ToyTVar newvar.
	nestedTArrow := ToyTVar tv: (ToyTArrow type: t3 arrow: t4).
	prettyPrintA := (ToyTArrow type: (ToyTArrow type: t1 arrow: t2) arrow: nestedTArrow) asString.
	prettyPrintB := (ToyTArrow type: (ToyTArrow type: t1 arrow: t2) arrow: (ToyTArrow type: t3 arrow: t4)) asString.  
	self assert: prettyPrintA = prettyPrintB.
