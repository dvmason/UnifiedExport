type unification
send: aUEMessage with: ueTypes
   (aUEMessage argTypes size = ueTypes size) ifFalse:  [ ^ self notUnifiable ].
   aUEMessage argTypes with: ueTypes do: [ :mine :other |
	    mine unifyWith: other.
	].
	(self methods includes: aUEMessage selector) ifTrue: [ | searching messages |
		searching := true.
		messages := methods at: aUEMessage selector.
		messages do: [: message |
			(searching and: [aUEMessage unifiableWith: message]) ifTrue: [
				aUEMessage unifyWith: message.
				searching := false.
		]].
		searching ifFalse: [
			methods at: aUEMessage selector put: (messages add: aUEMessage)
	]] ifFalse: [
		methods at: aUEMessage selector put: (OrderedCollection with: aUEMessage)
	].
	^aUEMessage resultType.