type unification
addMethods: aDictionaryOfMessages
   aDictionaryOfMessages do: [:otherSelector :otherMessages |
		methods at: otherSelector ifPresent: [ :myMessages |
			otherMessages do: [: otherMessage | myMessages unifyWith: otherMessage ].
			myMessages addAll: otherMessages.
		] ifAbsentPut: [
			otherMessages
		].
	]