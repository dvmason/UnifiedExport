testing
includesKey: aKey
	key = aKey ifTrue: [ ^ true ].
	^ nextLink includesKey: aKey