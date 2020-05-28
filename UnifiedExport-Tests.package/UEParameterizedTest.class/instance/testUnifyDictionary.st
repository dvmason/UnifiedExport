testing
testUnifyDictionary
	"comment stating purpose of message"
	| v d1 d2 d3 d4 |
	v := UEVariable new.
	d1 := UEDictionary of: UEVariable new to: UEVariable new.
	d4 := UEDictionary of: UEVariable new to: UEVariable new.
	self assertUnifiable: d1 with: d4.
	d2 := UEDictionary of: UESimpleType integer to: UESimpleType boolean.
	d3 := UEDictionary of: UESimpleType integer to: UESimpleType boolean.
	self assertUnifiable: v with: d1.
	self assertUnifiable: v with: d2.
	self assertUnifiable: v with: d2.
	self assertUnifiable: v with: d3.
	self denyUnifiable: v with: (UEDictionary of: UESimpleType integer to: UESimpleType integer).
	self denyUnifiable: v with: (UEArray of: UESimpleType boolean).
	self assert: v find valueType find equals: UESimpleType boolean.
	self assert: v find keyType find equals: UESimpleType integer.
	self denyUnifiable: v find keyType find with: UESimpleType boolean.
	self assertUnifiable: v find keyType find with: UESimpleType integer.
