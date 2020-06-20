as yet unclassified
addTypeMap: aToyTVar to: aMap
	aMap at: aToyTVar ifPresent: [: value | ^ self == value ] ifAbsentPut: [ self ].
	^ true