type unification
unify: aTyp
	self == aTyp ifTrue: [ ^ self ].
	self unifyWith: aTyp.
