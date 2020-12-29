optimize
optimizeIfBoolean: aRBMessageNode
	| node receiver arguments |
	node := UEConditionalNode new.
	receiver := self visit: aRBMessageNode receiver.
	arguments := aRBMessageNode arguments.
	aRBMessageNode selector third =$T ifTrue: [
		node receiver: receiver
	] ifFalse: [
		node receiver: receiver not.
	].
	node trueBranch: (self visitInline: arguments first withArguments: #() required: true).
  arguments size = 2 ifTrue: [
		node falseBranch: (self visitInline: arguments second withArguments: #() required: true)
	].
	^ node