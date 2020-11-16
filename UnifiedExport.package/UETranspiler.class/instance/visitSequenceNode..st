visiting
visitSequenceNode: aRBSequenceNode 
	aRBSequenceNode statements do: [: statement |
		statementTarget addStatement: (self visit: statement)
	].
