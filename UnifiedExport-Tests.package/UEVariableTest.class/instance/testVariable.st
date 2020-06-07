tests
testVariable
	| v1 v2 c1 |
	self assert: UEVariable new unifiableWith: UEVariable new.
	v1 := UEVariable new.
	typeInferencer unify: v1 with: self integer.
	self assert: v1 unifiableWith: UEVariable new.
	c1 := self integer.
	self assert: v1 unifiableWith: c1.
	self assert: self integer unifiableWith: v1.
	self assert: v1 unifiableWith: v1.
	v2 := UEVariable new.
	self assert: v2 unifiableWith: v1.
	self denyUnifiable: v2 with: self boolean.
	self denyUnifiable: self boolean with: v2.
