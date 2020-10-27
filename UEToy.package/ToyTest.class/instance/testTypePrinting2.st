tests
testTypePrinting2
	| prettyPrintA prettyPrintB t1 t2 |
	"test that ('a -> 'b) -> ('a -> 'b) is the same string as ('a -> 'b) -> ('a -> 'b)"
	t1 := ToyTVar newvar.
	t2 := ToyTVar newvar.
	prettyPrintA := (ToyTArrow type: (ToyTArrow type: t1 arrow: t2) arrow: (ToyTArrow type: t1 arrow: t2)) asString.
	prettyPrintB := (ToyTArrow type: (ToyTArrow type: t1 arrow: t2) arrow: (ToyTArrow type: t1 arrow: t2)) asString.  
	self assert: prettyPrintA = prettyPrintB.
