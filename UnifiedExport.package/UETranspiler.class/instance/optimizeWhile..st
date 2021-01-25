optimize
optimizeWhile: aRBMessageNode
	| node test |
	(aRBMessageNode receiver isImmediateNode and: [ 
		 aRBMessageNode arguments isEmpty or: [ 
			 aRBMessageNode arguments first isImmediateNode ] ]) ifFalse: [ 
		^ self visitMessageNodeDefault: aRBMessageNode ].
	node := UEWhileNode new.
	test := self visitInline: aRBMessageNode receiver withArguments: #() required: false.
	node test: (aRBMessageNode selector sixth = $T
			 ifTrue: [ test ]
			 ifFalse: [ test not ]) resultRequired.
	aRBMessageNode arguments isEmpty ifFalse: [ 
		node body: (self visitInline: aRBMessageNode arguments first withArguments: #() required: false)].
	^ node