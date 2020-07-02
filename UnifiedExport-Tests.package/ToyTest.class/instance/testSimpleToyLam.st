tests
testSimpleToyLam
	| toy type expectedType t1 |
	toy := ToyLam varname: #y exp: (ToyVar varname: #y).
	t1 := ToyTVar newvar.
	expectedType := ToyTArrow type: t1 arrow: t1.
	type := toy typeOf: nil.
	self assert: type sameType: expectedType.
