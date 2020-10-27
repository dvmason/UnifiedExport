as yet unclassified
addTypeMap: aToyTVar to: aMap
	tv isToyTArrow ifTrue: [ ^tv addTypeMap: aToyTVar to: aMap ].
	aMap at: aToyTVar ifPresent: [: value | ^ self == value ] ifAbsentPut: [ self ].
	^ true