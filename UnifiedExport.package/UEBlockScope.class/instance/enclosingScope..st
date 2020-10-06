scope
enclosingScope: aScope
	super enclosingScope: aScope.
	self methodScope addBlock: self.
