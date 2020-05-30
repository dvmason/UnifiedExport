type unification
unifyWith: aUEVariable 
	self unifiableWith: aUEVariable.
	^ self union: aUEVariable