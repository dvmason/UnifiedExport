visiting
visitInline: aRBNode withArguments: arguments
	^ aRBNode isBlock ifTrue: [
		arguments isEmpty ifTrue: [
			aRBNode hasArguments ifTrue: [
				self error: 'can''t inline block with arguments' ].
		] ifFalse: [
			aRBNode arguments size ~= arguments size ifTrue: [
				self error: 'can''t inline block with wrong number of arguments' ].
		].
		self visit: aRBNode
	] ifFalse: [
		UEBlockNode new addStatement: (
			UEMessageNode new
				selector: (#(value value: value:value:) at: arguments size + 1)
				receiver: (self visit: aRBNode)
				arguments: arguments)
	]