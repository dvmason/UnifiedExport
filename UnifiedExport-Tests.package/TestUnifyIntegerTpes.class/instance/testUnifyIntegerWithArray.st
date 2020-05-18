testing
testUnifyIntegerWithArray
	"comment stating purpose of message"

	self deny: (typeInferencer unify: UEType integer with: (UEArray of: UEType integer)).
	self deny: (typeInferencer unify: (UEArray of: UEType integer) with: UEType integer).