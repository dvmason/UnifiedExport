tests
testVariable
	| v1 v2 c1 |
	self assert: (typeInferencer unify: UEVariable new with: UEVariable new).
	v1 := UEVariable new.
	typeInferencer unify: v1 with: UEType integer.
	self assert: (typeInferencer unify: v1 with: UEVariable new).
	c1 := UEType integer.
	self assert: (typeInferencer unify: v1 with: c1).
	self assert: (typeInferencer unify: UEType integer with: v1).
	self assert: (typeInferencer unify: v1 with: v1).
	v2 := UEVariable new.
	self halt.
	self assert: (typeInferencer unify: v2 with: v1).
	self deny: (typeInferencer unify: v2 with: UEType boolean).
	self deny: (typeInferencer unify: UEType boolean with: v2).
