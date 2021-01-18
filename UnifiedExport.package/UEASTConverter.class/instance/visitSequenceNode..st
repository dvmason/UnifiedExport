visiting
visitSequenceNode: aRBSequenceNode 
	aRBSequenceNode statements do: [: statement |
		methodOrBlock addStatement: (self visit: statement)
	].
