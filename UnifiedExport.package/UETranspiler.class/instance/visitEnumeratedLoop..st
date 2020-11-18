visiting
visitEnumeratedLoop: aRBMessageNode
	| node |
	node := UEDoLoopNode new.
	node start: (self visit: aRBMessageNode receiver).
	node stop: (self visit: aRBMessageNode arguments first).
	aRBMessageNode arguments size = 2
		ifTrue: [ node step: (UELiteralNode new value: 1) ]
		ifFalse: [ node step: (self visit: aRBMessageNode arguments second) ].
	node body: (self
			 visitInline: aRBMessageNode arguments last
			 withArguments: {UETempVariable new}).
	^ node