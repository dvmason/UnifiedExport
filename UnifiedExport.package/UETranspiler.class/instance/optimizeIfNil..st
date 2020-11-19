optimize
optimizeIfNil: aRBMessageNode

	| node receiver arguments secondArg firstArg |
	node := UEConditionalNode new.
	receiver := self visit: aRBMessageNode receiver.
	arguments := aRBMessageNode arguments.
	firstArg := secondArg := #().
	aRBMessageNode selector fourth = $i ifTrue: [
		node receiver: receiver.
		secondArg := { UETempVariable new }
	] ifFalse: [
		node receiver: receiver not.
		arguments := arguments reversed.
		firstArg := { UETempVariable new }
	].
	node trueBranch: (self
			 visitInline: arguments first
					   withArguments: firstArg
					   required: false).
  arguments size = 2 ifTrue: [
		node falseBranch: (self
					   visitInline: aRBMessageNode arguments last
					   withArguments: secondArg
					   required: false) ].
	^ node