type unification
unifyWith: aTyp
	tv isToyUnbound ifTrue: [ ^ tv := aTyp ].
	tv isToyLink ifTrue: [ ^ tv unify: nil link: aTyp ].

 