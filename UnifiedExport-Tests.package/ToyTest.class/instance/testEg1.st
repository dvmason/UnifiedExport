tests
testEg1
	" fun x -> let y = fun z -> z in y "

	| toy env type |
	toy := ToyLam
		varname: #x
		exp:
			(ToyLet
				varname: #y
				exp: (ToyLam varname: #z exp: (ToyVar varname: #z))
				exp: (ToyVar varname: #y)).
	env := nil.
	type := toy typeOf: env.
	self fail.
