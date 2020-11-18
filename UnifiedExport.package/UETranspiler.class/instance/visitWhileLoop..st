visiting
visitWhileLoop: aRBMessageNode 
	| node test |
	node := UEWhileNode new.
	test := self visitInline: aRBMessageNode receiver withArguments: #().
	node test:  (aRBMessageNode selector sixth = $T ifTrue: [ test ] ifFalse: [ test not ]).
	aRBMessageNode arguments isEmpty ifFalse: [
		node body: (self
				visitInline: aRBMessageNode arguments last
			 withArguments: #())].
	^ node