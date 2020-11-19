class initialization
initialize
	" from OCASTTranslator initialize"
	OptimizedMessages := { 
"	#caseOf: -> #optimizeCaseOf: .
	#caseOf:otherwise: -> #optimizeCaseOf: .
"	#ifFalse: -> #optimizeIfBoolean: .
	#ifFalse:ifTrue: -> #optimizeIfBoolean: .
	#ifNil: -> #optimizeIfNil: .
	#ifNil:ifNotNil: -> #optimizeIfNil: .
	#ifNotNil: -> #optimizeIfNil: .
	#ifNotNil:ifNil: -> #optimizeIfNil: .
	#ifTrue: -> #optimizeIfBoolean: .
	#ifTrue:ifFalse: -> #optimizeIfBoolean: .
"	#or: -> #optimizeOr: .
	#and: -> #optimizeAnd: .
	#timesRepeat: -> #optimizeTimesRepeat: .
"	#to:by:do: -> #optimizeToDo: .
	#to:do: -> #optimizeToDo: .
	#whileFalse: -> #optimizeWhile: .
	#whileTrue: -> #optimizeWhile: .
	#whileFalse -> #optimizeWhile: .
	#whileTrue -> #optimizeWhile:
	 } asDictionary