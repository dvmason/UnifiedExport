type unification
unifyWith: aUEType
	| union |
	self unifiableWith: aUEType.
	union := self union: aUEType.
	union addMethods: self.
	union addMethods: aUEType.
	^ union