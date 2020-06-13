tests
testEg3
	" fun x -> let y = fun z -> x z in y "

	| toy env type t1 t2 correctType t3 t4 unsoundType |
	toy := ToyLam
		varname: #x
		exp:
			(ToyLet
				varname: #y
				exp: (ToyLam varname: #z exp: (ToyApp exp: (ToyVar varname: #x) exp: (ToyVar varname: #z)))
				exp: (ToyVar varname: #y)).
	env := nil.
	t1 := ToyUnbound new.
	t2 := ToyUnbound new.
	correctType := ToyTArrow type: (ToyTArrow type: t1 arrow: t2) arrow: (ToyTArrow type: t1 arrow: t2).
	t3 := ToyUnbound new.
	t4 := ToyUnbound new.
	unsoundType := ToyTArrow type: (ToyTArrow type: t1 arrow: t2) arrow: (ToyTArrow type: t3 arrow: t4).
	type := toy typeOf: env.
	self assert: type equals: unsoundType. " change to correctType once typeOf: has been extended"
