testing
testUnifyArray
	"comment stating purpose of message"
	| a1 |
	a1 := UEArray of: UEVariable new.
	self assertUnifiable: a1 with: (UEArray of: self integer).
	self assertUnifiable: a1 with: (UEArray of: self integer).
	self denyUnifiable: a1 with: (UEArray of: self boolean).
	self denyUnifiable: a1 with: (UEDictionary of: self integer to: self integer).
	self assert: a1 valueType find equals: self integer.
"	self assert: a1 keyType find equals: self integer.
	self denyUnifiable: a1 keyType with: self boolean.
	self assertUnifiable: a1 keyType with: self integer.
"