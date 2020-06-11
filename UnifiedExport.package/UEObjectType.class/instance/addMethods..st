type unification
addMethods: aDictionaryOfMessages
   aDictionaryOfMessages do: [:otherSelector :otherMessages |
		methods at: otherSelector ifPresent: [ :myMessages |
			myMessages first unifyWith: otherMessages first.
			myMessages addAll: otherMessages.
		 ] ifAbsentPut: [ otherMessages ].
	]