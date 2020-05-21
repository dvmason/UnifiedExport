tests
testVariable
	| v1 v2 c1 |
	self assertUnifiable: UEVariable new with: UEVariable new.
	v1 := UEVariable new.
	typeInferencer unify: v1 with: UEType integer.
	self assertUnifiable: v1 with: UEVariable new.
	c1 := UEType integer.
	self assertUnifiable: v1 with: c1.
	self assertUnifiable: UEType integer with: v1.
	self assertUnifiable: v1 with: v1.
	v2 := UEVariable new.
	self assertUnifiable: v2 with: v1.
	self denyUnifiable: v2 with: UEType boolean.
	self denyUnifiable: UEType boolean with: v2.
