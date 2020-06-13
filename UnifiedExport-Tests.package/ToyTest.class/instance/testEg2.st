tests
testEg2
	" fun x -> let y = x in y "

	| toy env type |
	toy := ToyLam
		varname: #x
		exp:
			(ToyLet
				varname: #y
				exp: (ToyVar varname: #x)
				exp: (ToyVar varname: #y)).
	env := nil.
	type := toy typeOf: env.
	self fail.
