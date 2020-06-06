testing
testUnifyDictionary
	"comment stating purpose of message"
	| v d1 d2 d3 d4 |
	v := UEVariable new.
	d1 := UEDictionary of: UEVariable new to: UEVariable new.
	d4 := UEDictionary of: UEVariable new to: UEVariable new.
	self assertUnifiable: d1 with: d4.
	d2 := UEDictionary of: self integer to: self boolean.
	d3 := UEDictionary of: self integer to: self boolean.
	self assertUnifiable: v with: d1.
	self assertUnifiable: v with: d2.
	self assertUnifiable: v with: d2.
	self assertUnifiable: v with: d3.
	self denyUnifiable: v with: (UEDictionary of: self integer to: self integer).
	self denyUnifiable: v with: (UEArray of: self boolean).
	self assert: v find valueType find equals: self boolean find.
	self assert: v find keyType find equals: self integer find.
	self denyUnifiable: v find keyType find with: self boolean find.
	self assertUnifiable: v find keyType find with: self integer.
