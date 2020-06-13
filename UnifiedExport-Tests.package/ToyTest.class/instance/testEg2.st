tests
testEg2
	" fun x -> let y = x in y "

	| toy env type t1 expectedType |
	toy := ToyLam
		varname: #x
		exp:
			(ToyLet
				varname: #y
				exp: (ToyVar varname: #x)
				exp: (ToyVar varname: #y)).
	env := nil.
	t1 := ToyUnbound new.
	expectedType := ToyTArrow type: t1 arrow: t1.
	type := toy typeOf: env.
	self assert: type equals: expectedType.
