visiting
visitSequenceNode: aRBSequenceNode 
	aRBSequenceNode statements do: [: statement |
		methodOrBlockNode addStatement: (self visit: statement)
	].
