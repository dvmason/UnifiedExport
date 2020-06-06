comparing
hash
	parent ifNil: [ ^ super hash ].
	^ self find hash