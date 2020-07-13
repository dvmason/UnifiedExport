tests
testSimpleToyVar
	

	| toy type expectedType |
	toy := ToyVar varname: #y.
	expectedType := ToyTVar newvar.
	type := toy typeOf: nil.
	self assert: type sameType: expectedType.
