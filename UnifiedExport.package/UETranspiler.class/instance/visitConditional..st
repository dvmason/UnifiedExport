visiting
visitConditional: aRBMessageNode

	| node |
	node := UEConditionalNode new.
	node receiver: (self visit: aRBMessageNode receiver).
	aRBMessageNode selector = #ifTrue:ifFalse: ifTrue: [ 
		^ node
			  trueBranch: (self
					   visitInline: aRBMessageNode arguments first
					   withArguments: #());
			  falseBranch: (self
					   visitInline: aRBMessageNode arguments last
					   withArguments: #()) ].
	aRBMessageNode selector = #ifTrue: ifTrue: [ 
		^ node trueBranch: (self
				   visitInline: aRBMessageNode arguments first
				   withArguments: #()) ].
	aRBMessageNode selector = #ifFalse: ifTrue: [ 
		^ node falseBranch: (self
				   visitInline: aRBMessageNode arguments first
				   withArguments: #()) ].
	^ node
		  falseBranch: (self
				   visitInline: aRBMessageNode arguments first
				   withArguments: #());
		  trueBranch: (self
				   visitInline: aRBMessageNode arguments last
				   withArguments: #())