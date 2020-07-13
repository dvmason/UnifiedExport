printing
typeOf: env
	"App (e1,e2) ->
           let ty_fun = typeof env e1 in
           let ty_arg = typeof env e2 in
           let ty_res = newvar () in
           unify ty_fun (TArrow (ty_arg,ty_res));
           ty_res"
| typFun typArg typRes |
typFun := exp1 typeOf: env.
typArg := exp2 typeOf: env.
typRes = self newvar.
typFun unify: (ToyTArrow type: typArg arrow: typRes).
^typRes.

