type inference
typeOf: env
"Lam (x,e) -> 
           let ty_x = newvar () in
           let ty_e = typeof ((x,ty_x)::env) e in
           TArrow(ty_x,ty_e)"
	| typX typE |
	typX := self newvar.
	typE := exp typeOf: (varname arrow: typX prependTo: env).
	^ ToyTArrow type: typX arrow: typE