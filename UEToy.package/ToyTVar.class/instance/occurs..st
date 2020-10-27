type unification
occurs: aTyp
	tv isToyUnbound ifTrue: [ ^tv occurs: aTyp ].
	tv isToyLink ifTrue: [ ^aTyp occurs: aTyp ].
	tv isToyTArrow ifTrue: [ ^tv occurs: aTyp ].
	^false.

 