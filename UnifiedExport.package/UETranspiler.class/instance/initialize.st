initialization
initialize
	typeChecker := UETypeChecker new transpiler: self.
	currentScope := globalscope := typeChecker globalScope.
	classes := IdentityDictionary new.
	methods := IdentityDictionary new.
	selectors := Set new.
	methodsToTranspile := IdentitySet new.

