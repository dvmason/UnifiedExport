type inference
typeOf: env
	"Let (x,e,e2) -> 
           let ty_e = typeof env e in
           typeof ((x,gen ty_e)::env) e2"
	| typE |
	typE := exp1 typeOf: env.
	^ exp2 typeOf: (varname arrow: (typE gen) prependTo: env).
