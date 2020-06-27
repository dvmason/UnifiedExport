initialization
initialize
	super initialize.
	typeMap := IdentityDictionary new.
	methodsToType := OrderedCollection new.
	classesToInitialize := OrderedCollection new.
	currentScope := UEGlobalScope new.
