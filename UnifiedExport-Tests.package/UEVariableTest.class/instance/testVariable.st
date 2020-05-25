tests
testVariable
	| v1 v2 c1 |
	self assertUnifiable: UEVariable new with: UEVariable new.
	v1 := UEVariable new.
	typeInferencer unify: v1 with: UESimpleType integer.
	self assertUnifiable: v1 with: UEVariable new.
	c1 := UESimpleType integer.
	self assertUnifiable: v1 with: c1.
	self assertUnifiable: UESimpleType integer with: v1.
	self assertUnifiable: v1 with: v1.
	v2 := UEVariable new.
	self assertUnifiable: v2 with: v1.
	self denyUnifiable: v2 with: UESimpleType boolean.
	self denyUnifiable: UESimpleType boolean with: v2.
