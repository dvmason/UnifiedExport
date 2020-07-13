public
transpileClass: aClass
	moreToProcess := false.
	self addClassesToTranspile: { aClass }.
	self transitiveClosure.