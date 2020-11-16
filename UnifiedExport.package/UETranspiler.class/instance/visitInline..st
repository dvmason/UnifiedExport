visiting
visitInline: aRBNode
	| savedStatements |
	savedStatements := statementTarget.
	[
		statementTarget := UEStatementsNode new.
		aRBNode isBlock ifTrue: [
			aRBNode hasArguments ifTrue: [ self error: 'can''t inline block with arguments' ].
			self visit: aRBNode body
		] ifFalse: [
			statementTarget addStatement: (UEMessageNode new selector: #value receiver: (self visit: aRBNode) arguments: #())
		].
		^ statementTarget
	] ensure: [ statementTarget := savedStatements ]