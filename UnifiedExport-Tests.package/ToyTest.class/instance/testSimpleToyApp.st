tests
testSimpleToyApp
	| app exp expectedType type x w |
	x := ToyVar varname: #x.
	w := ToyVar varname: #w.
	exp := ToyLam varname: w exp: w.
	
	app := ToyApp exp: exp exp: w.
	expectedType := w typeOf: nil.
	type :=  app typeOf: nil.
	self assert: type sameType: expectedType.
