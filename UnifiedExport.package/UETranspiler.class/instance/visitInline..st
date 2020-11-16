visiting
visitInline: aRBNode
	| savedStatements |
	aRBNode isBlock ifFalse: [ ^ self visit: aRBNode ].
	self flag: #ToDo. " check that there are no arguments "
	savedStatements := statementTarget.
	[
		statementTarget := UEStatementsNode new.
		self visit: aRBNode body.
		^ statementTarget
	] ensure: [ statementTarget := savedStatements ]