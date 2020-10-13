tests
testTypePrinting4
	| prettyPrintA prettyPrintB t1 t2 nestedTArrow |
	"test that ('a -> 'b) -> ('a -> 'b) is the same string as ('a -> 'b) -> ('a -> 'b) 
	even though one ToyTArrow is nested in a ToyTVar"
	t1 := ToyTVar newvar.
	t2 := ToyTVar newvar.
	nestedTArrow := ToyTVar tv: (ToyTArrow type: t1 arrow: t2).
	prettyPrintA := (ToyTArrow type: nestedTArrow arrow: (ToyTArrow type: t1 arrow: t2)) asString.
	prettyPrintB := (ToyTArrow type: (ToyTArrow type: t1 arrow: t2) arrow: (ToyTArrow type: t1 arrow: t2)) asString.  
	self assert: prettyPrintA = prettyPrintB.
