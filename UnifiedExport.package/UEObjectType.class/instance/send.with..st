type unification
send: aUEMessage with: ueTypes
	(aUEMessage isParametersUnifiableWith: ueTypes) ifFalse:  [ ^ self notUnifiable ].
	(self methods at: aUEMessage selector) 
	   ifNil: [ methods at: aUEMessage selector put: aUEMessage ] 
	   ifNotNil: [ aUEMessage unifyWith: (methods at: aUEMessage) ].
	^aUEMessage resultType.