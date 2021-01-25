initialization
initialize
	super initialize.
	typeMap := IdentityDictionary new.
	typeMap at: Behavior put: #ignore.
	replacementMethods := IdentityDictionary new.
	replacementMethods at: Object class >> #initialize put: ProtoObject >> #initialize.
	replacementMethods at: Behavior >> #initialize put: ProtoObject >> #initialize.
	replacementMethods at: Behavior class >> #initialize put: ProtoObject >> #initialize.
	classesToInitialize := OrderedCollection new.
	currentScope := UEGlobalScope new.
