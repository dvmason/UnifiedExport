testing
testUnifyArray
	"comment stating purpose of message"
	| a1 |
	a1 := UEArray of: UEType variable.
	self assertUnifiable: a1 with: (UEArray of: UEType integer).
	self assertUnifiable: a1 with: (UEArray of: UEType integer).
	self denyUnifiable: a1 with: (UEArray of: UEType boolean).
	self denyUnifiable: a1 with: (UEDictionary of: UEType integer to: UEType integer).
	self assert: a1 valueType find equals: UEType integer.
	self denyUnifiable: a1 keyType with: UEType boolean.
	self assertUnifiable: a1 keyType with: UEType integer.
