running
assert: t1 unifiableWith: t2
	self assert: (typeInferencer unify: t1 with: t2)