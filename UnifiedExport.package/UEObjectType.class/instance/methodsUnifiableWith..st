type unification
methodsUnifiableWith: otherMethods
	methods keysAndValuesDo: [: selector : message |
		(otherMethods at: selector) ifNil: [ ^false ] 
			ifNotNil: [ :otherMessage |
				(message unifiableWith: otherMessage) ifFalse: [ ^false ]
			].
	].
	^true