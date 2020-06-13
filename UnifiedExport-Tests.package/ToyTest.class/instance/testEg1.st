tests
testEg1
	" fun x -> let y = fun z -> z in y "

	| toy env type t1 t2 expectedType |
	toy := ToyLam
		varname: #x
		exp:
			(ToyLet
				varname: #y
				exp: (ToyLam varname: #z exp: (ToyVar varname: #z))
				exp: (ToyVar varname: #y)).
	env := nil.
	t1 := ToyUnbound new.
	t2 := ToyUnbound new.
	expectedType := ToyTArrow type: t1  arrow: (ToyTArrow type: t2 arrow: t2).
	type := toy typeOf: env.
	self assert: type equals: expectedType.
