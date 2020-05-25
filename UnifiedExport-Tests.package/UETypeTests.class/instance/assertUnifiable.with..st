running
assertUnifiable: t1 with: t2
	self assert: (typeInferencer unify: t1 with: t2)