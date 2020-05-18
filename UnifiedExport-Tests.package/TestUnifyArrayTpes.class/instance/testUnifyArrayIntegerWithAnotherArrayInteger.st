testing
testUnifyArrayIntegerWithAnotherArrayInteger
	"comment stating purpose of message"
	
	self assert: (typeInferencer unify: (UEArray of: UEType integer) with: (UEArray of: UEType integer)).