visiting
visitSequenceNode: aRBSequenceNode 
	aRBSequenceNode statements do: [: statement |
		transpiler addStatement: (self visit: statement)
	].
