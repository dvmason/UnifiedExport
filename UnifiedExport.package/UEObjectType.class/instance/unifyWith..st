type unification
unifyWith: aUEType
	self unifiableWith: aUEType.
	"should loop over selectors and message to unify with"
	^self union: aUEType.