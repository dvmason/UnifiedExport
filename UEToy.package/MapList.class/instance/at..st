accessing
at: aKey
	key = aKey ifTrue: [ ^ value ].
	^ nextLink at: aKey