optimize
visitInline: aRBNode withArguments: arguments required: isRequired
	^ aRBNode isBlock ifTrue: [
		arguments isEmpty ifTrue: [
			aRBNode hasArguments ifTrue: [
				self error: 'can''t inline block with arguments' ].
		] ifFalse: [
			(isRequired and: [aRBNode arguments size < arguments size]) ifTrue: [
				self error: 'can''t inline block with too few arguments' ].
		].
		self visit: aRBNode
	] ifFalse: [
		UEBlockNode new addStatement: (
			UEMessageNode new
				selector: ((isRequired ifTrue: [ #(value value: value:value:)] ifFalse: [#(value cull: cull:cull:)]) at: arguments size + 1)
				receiver: (self visit: aRBNode)
				arguments: arguments)
	]