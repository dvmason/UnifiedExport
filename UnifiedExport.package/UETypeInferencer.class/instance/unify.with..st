utilities
unify: aUEType with: a2ndUEType
	"true if the two types maybe unified, false if not"
	
	^ [ aUEType unifyWith: a2ndUEType. true ] on: UETypeNotUnifiable do: [ false ]