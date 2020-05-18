testing
testUnifyIntegerWithDictionary
	"comment stating purpose of message"


	self deny: (typeInferencer unify: UEType integer with: (UEDictionary of: UEType integer)).