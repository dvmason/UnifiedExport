type unification
unifyWith: aTyp
	tv isToyUnbound ifTrue: [ ^ (tv occurs: aTyp) ifFalse: [tv := aTyp ]].
	tv isToyLink ifTrue: [ ^ tv unify: nil link: aTyp ].

 