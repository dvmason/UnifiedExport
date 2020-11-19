optimize
optimizeWhile: aRBMessageNode
	| node test |
	(aRBMessageNode receiver isImmediateNode and: [ 
		 aRBMessageNode arguments isEmpty or: [ 
			 aRBMessageNode arguments last isImmediateNode ] ]) ifFalse: [ 
		^ self visitMessageNodeDefault: aRBMessageNode ].
	node := UEWhileNode new.
	test := self
		        visitInline: aRBMessageNode receiver
		        withArguments: #()
		        required: false.
	node test: (aRBMessageNode selector sixth = $T
			 ifTrue: [ test ]
			 ifFalse: [ test not ]) resultRequired.
	aRBMessageNode arguments isEmpty ifFalse: [ 
		node body: (self
				 visitInline: aRBMessageNode arguments last
				 withArguments: #()
				 required: false)].
	^ node