type unification
methodsUnifiableWith: otherMethods
	methods keysAndValuesDo: [: selector : messages |
		otherMethods at: selector ifPresent: [ :otherMessages |
				(messages first unifiableWith: otherMessages first) ifFalse: [ ^false ]
			].
	].
	^true