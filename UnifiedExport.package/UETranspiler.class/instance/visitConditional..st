visiting
visitConditional: aRBMessageNode
	| node |
	node := UEConditionalNode new.
	node receiver: (self visit: aRBMessageNode receiver).
	aRBMessageNode selector = #ifTrue: ifTrue: [ ^ node trueBranch: (self visitInline: aRBMessageNode arguments first) ].
	aRBMessageNode selector = #ifFalse: ifTrue: [ ^ node falseBranch: (self visitInline: aRBMessageNode arguments first) ].
	aRBMessageNode selector = #ifTrue:ifFalse: ifTrue: [
		^ node trueBranch: (self visitInline: aRBMessageNode arguments first);
			falseBranch: (self visitInline: aRBMessageNode arguments last) ].
	^ node falseBranch: (self visitInline: aRBMessageNode arguments first);
		trueBranch: (self visitInline: aRBMessageNode arguments last)