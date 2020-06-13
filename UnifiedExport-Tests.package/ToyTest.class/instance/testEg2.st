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
	t1 := ToyUnbound new.
	t2 := ToyUnbound new.
	correctType := ToyTArrow type: t1 arrow: t1.
	unsoundType := ToyTArrow type: t1 arrow: t2.
	type := toy typeOf: env.
	self assert: type equals: unsoundType. " change to correctType once typeOf: has been extended"
