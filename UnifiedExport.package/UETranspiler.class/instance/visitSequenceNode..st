visiting
visitSequenceNode: aRBSequenceNode 
	aRBSequenceNode statements do: [: statement |
		methodNode addStatement: (self visit: statement)
	].
