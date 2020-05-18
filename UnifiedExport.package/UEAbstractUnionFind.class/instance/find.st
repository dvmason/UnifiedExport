sets support
find
	parent ifNil: [ ^ self ].
	^ parent := parent find