testing
includesKey: aKey
	key = aKey ifTrue: [ ^ true ].
	nextLink = nil ifTrue: [ ^ false ].
	^ nextLink includesKey: aKey