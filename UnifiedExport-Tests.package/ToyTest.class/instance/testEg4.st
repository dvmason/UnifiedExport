tests
testEg4
	" fun x -> let y = fun z -> x z in y "

	| toy env type t1 t2 correctType |
	toy := ToyLam
		varname: #x
		exp:
			(ToyLet
				varname: #y
				exp: (ToyLam varname: #z exp: (ToyApp exp: (ToyVar varname: #x) exp: (ToyVar varname: #z)))
				exp: (ToyVar varname: #y)).
	env := nil.
	t1 := ToyTVar newvar.
	t2 := ToyTVar newvar.
	correctType := ToyTArrow type: (ToyTArrow type: t1 arrow: t2) arrow: (ToyTArrow type: t1 arrow: t2).
	type := toy typeOf: env.
	self assert: type equals: correctType.
