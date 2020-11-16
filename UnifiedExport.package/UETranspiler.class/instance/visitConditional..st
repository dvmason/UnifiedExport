visiting
visitConditional: aRBMessageNode
	| node |
	node := UEConditionalNode new.
	node receiver: (self visit: aRBMessageNode receiver).
	aRBMessageNode selector = #ifTrue: ifTrue: [ ^ node t: (self visitInline: aRBMessageNode arguments first) ].
	aRBMessageNode selector = #ifFalse: ifTrue: [ ^ node f: (self visitInline: aRBMessageNode arguments first) ].
	aRBMessageNode selector = #ifTrue:ifFalse: ifTrue: [
		^ node t: (self visitInline: aRBMessageNode arguments first);
			f: (self visitInline: aRBMessageNode arguments last) ].
	^ node f: (self visitInline: aRBMessageNode arguments first);
		t: (self visitInline: aRBMessageNode arguments last)