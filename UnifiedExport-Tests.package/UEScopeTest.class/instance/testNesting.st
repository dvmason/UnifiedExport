tests
testNesting
	| c1 c2 |
	typeChecker := UETypeChecker new. " get rid of this once ready "
	c1 := typeChecker newClassScope: 'c1'.
	c2 := typeChecker newClassScope: 'c2'.
