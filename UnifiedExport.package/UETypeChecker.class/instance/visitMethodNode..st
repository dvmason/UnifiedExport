visitor
visitMethodNode: aRBMethodNode 
	methodType := UEMessage selector: aRBMethodNode selector.
	typeMap at: aRBMethodNode method put: methodType.
	aRBMethodNode statements do: [: statement | statement acceptVisitor: self ].
