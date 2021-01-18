optimize
optimizeIfNil: aRBMessageNode
	| node receiver arguments secondArgs firstArgs |
	node := UEConditionalNode new.
	receiver := self visit: aRBMessageNode receiver.
	arguments := aRBMessageNode arguments.
	firstArgs := secondArgs := #().
	aRBMessageNode selector fourth = $i ifTrue: [
		node receiver: receiver.
		secondArgs := { UETempVariable new }
	] ifFalse: [
		node receiver: receiver not.
		firstArgs := { UETempVariable new }
	].
	node trueBranch: (self visitInline: arguments first withArguments: firstArgs required: false).
  arguments size = 2 ifTrue: [
		node falseBranch: (self visitInline: arguments second withArguments: secondArgs required: false)
	].
	^ node