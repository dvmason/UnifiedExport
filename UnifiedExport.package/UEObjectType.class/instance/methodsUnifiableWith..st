type unification
methodsUnifiableWith: otherMethods
	methods keysAndValuesDo: [: selector : message |
		otherMethods at: selector ifPresent: [ :otherMessage |
				(message unifiableWith: otherMessage) ifFalse: [ ^false ]
			].
	].
	^true