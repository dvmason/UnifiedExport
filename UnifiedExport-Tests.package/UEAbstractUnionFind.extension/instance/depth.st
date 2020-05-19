*UnifiedExport-Tests
depth
	^ 1 + (parent ifNil: [ 0 ] ifNotNil: [ parent depth ]).
	