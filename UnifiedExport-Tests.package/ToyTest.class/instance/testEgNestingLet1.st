tests
testEgNestingLet1
	" 	#	 fun x -> let y = fun z -> let m = fun y -> x z in m in y;;
		- : ('a -> 'b) -> 'a -> 'c -> 'b = <fun> "

	| toy env type t1 t2 correctType t3 t4 |
	toy := ToyLam
		varname: #x
		exp:
			(ToyLet
				varname: #y
				exp: (ToyLam varname: #z exp: (ToyLet
															varname: #m
															exp: ( ToyLam
																		varname: #y
																		exp: (ToyApp exp: (ToyVar varname: #x) exp: (ToyVar varname: #z)))
															exp: (ToyVar varname: #m) ) )
				exp: (ToyVar varname: #y)).
	env := nil.
	t1 := ToyTVar newvar.
	t2 := ToyTVar newvar.
	t3 := ToyTVar newvar.
	t4 := ToyTVar newvar.
	
	correctType := ToyTArrow type: (ToyTArrow type: t1 arrow: t2) arrow: (ToyTArrow type: t3 arrow: t4).
	type := toy typeOf: env.
	self assert: type equals: correctType. 	
