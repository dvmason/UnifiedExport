type inference
typeOf: env
	| typX typE |
	typX := self newvar.
	typE := exp typeOf: (varname arrow: typX prependTo: env).
	^ ToyTArrow type: typX arrow: typE