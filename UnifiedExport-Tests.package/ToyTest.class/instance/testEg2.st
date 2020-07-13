tests
testEg2
	" fun x -> let y = x in y "

	| toy env type t1 correctType t2 unsoundType |
	toy := ToyLam
		varname: #x
		exp:
			(ToyLet
				varname: #y
				exp: (ToyVar varname: #x)
				exp: (ToyVar varname: #y)).
	env := nil.
	t1 := ToyTVar newvar.
	t2 := ToyTVar newvar.
	correctType := ToyTArrow type: t1 arrow: t1.
	unsoundType := ToyTArrow type: t1 arrow: t2.
	type := toy typeOf: env.
	self assert: type equals: correctType. " change to correctType once typeOf: has been extended"
