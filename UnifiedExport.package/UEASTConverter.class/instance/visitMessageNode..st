visiting
visitMessageNode: aRBMessageNode
	^ OptimizedMessages at: aRBMessageNode selector ifPresent: [: selector |
			self perform: selector with: aRBMessageNode
		] ifAbsent: [
			self visitMessageNodeDefault: aRBMessageNode
		]