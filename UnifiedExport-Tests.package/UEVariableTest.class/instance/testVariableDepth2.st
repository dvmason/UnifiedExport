tests
testVariableDepth2
	| v1 v2 c1 |
	v1 := UEVariable new.
	v2 := UEVariable new.
	c1 := UESimpleType integer.
	typeInferencer unify: v1 with: c1.
	typeInferencer unify: v2 with: v1.
	v1 find. v2 find. c1 find.
	self assert: c1 depth equals: 1.
	self assert: v1 depth equals: 2.
	self assert: v2 depth equals: 2.
