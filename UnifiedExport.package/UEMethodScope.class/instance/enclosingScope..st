scope
enclosingScope: aScope
	super enclosingScope: aScope.
	self instanceScope addMethod: self.
