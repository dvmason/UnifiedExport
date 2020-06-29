as yet unclassified
typeOf: env 
	| type |
	
	"Let (x,e,e2) -> 
           let ty_e = typeof env e in
           typeof ((x,gen ty_e)::env) e2"
	varname := self newvar.
	"type := exp2 typeOf: (varname arrow: (exp1 typeOf: env) prependTo: env)."
	^ToyTArrow type: varname arrow: varname