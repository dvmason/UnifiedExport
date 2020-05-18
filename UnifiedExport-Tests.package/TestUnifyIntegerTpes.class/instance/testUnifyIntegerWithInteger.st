testing
testUnifyIntegerWithInteger
	"comment stating purpose of message"

	self assert: (typeInferencer unify: UEType integer with: UEType integer).