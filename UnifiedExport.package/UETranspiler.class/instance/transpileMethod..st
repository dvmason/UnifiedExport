visitor
transpileMethod: aMethod
	moreToProcess := false.
	self transpileMethods: { aMethod }.
	self transitiveClosure.