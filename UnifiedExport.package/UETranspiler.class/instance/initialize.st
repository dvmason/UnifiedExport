initialization
initialize
	typeChecker := UETypeChecker new transpiler: self.
	classes := IdentityDictionary new.
	methods := IdentityDictionary new.
	selectors := Set new.
	methodsToTranspile := IdentitySet new.

