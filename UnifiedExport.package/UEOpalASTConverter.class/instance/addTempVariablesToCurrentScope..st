visiting
addTempVariablesToCurrentScope: programNode.
	programNode scope allTemps do: [: temp | | var |
		var := nil.
		temp isArgumentVariable ifTrue: [
			var := UEArgument new
		].
		temp isTempVariable ifTrue: [
			var := UELocalVariable new
		].
		var ifNil: [ self halt ].
		var name: temp name.
		transpiler currentScope put: var.
	].