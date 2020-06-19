tests
testEg1a
	" fun x -> let y = fun x -> x in y "

	| toy env type t1 t2 expectedType |
	toy := ToyLam
	varname: #x
		exp:
			(ToyLet
				varname: #y
				exp: (ToyLam varname: #x exp: (ToyVar varname: #x))
				exp: (ToyVar varname: #y)).
	env := nil.
	t1 := ToyUnbound new.
	t2 := ToyUnbound new.
	expectedType := ToyTArrow type: t1  arrow: (ToyTArrow type: t2 arrow: t2).
	type := toy typeOf: env.
	self assert: type sameType: expectedType.
