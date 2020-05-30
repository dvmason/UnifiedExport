initialization
initialize
	classes := IdentitySet new.
	methods := IdentitySet new.
	selectors := Set new.
	typeChecker := UETypeChecker new transpiler: self.
	typeMap := typeChecker typeMap.
	moreToProcess := false.
	