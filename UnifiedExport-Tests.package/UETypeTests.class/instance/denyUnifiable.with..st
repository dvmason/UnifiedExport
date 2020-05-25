running
denyUnifiable: t1 with: t2
	self deny: (typeInferencer unify: t1 with: t2)