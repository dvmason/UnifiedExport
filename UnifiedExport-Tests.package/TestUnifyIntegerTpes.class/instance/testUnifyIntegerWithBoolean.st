testing
testUnifyIntegerWithBoolean
	"comment stating purpose of message"

	self deny: (typeInferencer unify: UEType integer with: UEType boolean).