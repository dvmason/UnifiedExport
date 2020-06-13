tests
testEg3
	" fun x -> let y = fun z -> x z in y "

	| toy env type |
	toy := ToyLam
		varname: #x
		exp:
			(ToyLet
				varname: #y
				exp: (ToyLam varname: #z exp: (ToyApp exp: (ToyVar varname: #x) exp: (ToyVar varname: #z)))
				exp: (ToyVar varname: #y)).
	env := nil.
	type := toy typeOf: env.
	self fail.
