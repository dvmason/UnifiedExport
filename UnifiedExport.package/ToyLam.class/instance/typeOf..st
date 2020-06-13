type inference
typeOf: env
	| typX typE |
	typX := self newvar.
	typE := exp typeOf: (varname -> typX cons: env).
	^ ToyTArrow type: typX type: typE