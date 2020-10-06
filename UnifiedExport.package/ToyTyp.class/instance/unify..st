type unification
unify: aTyp
self halt.
	self == aTyp ifTrue: [ ^ self ].
	self unifyWith: aTyp.
