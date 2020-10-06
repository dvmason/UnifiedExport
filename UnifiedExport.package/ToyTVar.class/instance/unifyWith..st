type unification
unifyWith: aTyp
	tv class = ToyUnbound ifTrue: [ ^ tv := aTyp ].
	tv class = ToyLink ifTrue: [ ^ tv unify: nil link: aTyp ].

 