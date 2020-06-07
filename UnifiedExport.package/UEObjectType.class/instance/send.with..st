type unification
send: selector with: ueTypes
   | aUEMessage |
	aUEMessage := UEMessage selector: selector .
	(self methods includes: selector) ifTrue: [ | searching messages |
		searching := true.
		messages := methods at: selector.
		messages do: [: message |
			(searching and: [aUEMessage unifiableWith: message]) ifTrue: [
				aUEMessage unifyWith: message.
				searching := false.
		]].
		searching ifFalse: [
			methods at: selector put: (messages add: aUEMessage)
	]] ifFalse: [
		methods at: selector put: (OrderedCollection with: aUEMessage)
	].
	^ aUEMessage.