testing
testUnifyArray
	"comment stating purpose of message"
	| a1 |
	a1 := UEArray of: UEVariable new.
	self assertUnifiable: a1 with: (UEArray of: UESimpleType integer).
	self assertUnifiable: a1 with: (UEArray of: UESimpleType integer).
	self denyUnifiable: a1 with: (UEArray of: UESimpleType boolean).
	self denyUnifiable: a1 with: (UEDictionary of: UESimpleType integer to: UESimpleType integer).
	self assert: a1 valueType find equals: UESimpleType integer.
	self assert: a1 keyType find equals: UESimpleType integer.
	self denyUnifiable: a1 keyType with: UESimpleType boolean.
	self assertUnifiable: a1 keyType with: UESimpleType integer.
