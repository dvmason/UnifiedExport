testing
testUnifyIntegerWithArray
	"comment stating purpose of message"

	self denyUnifiable: UESimpleType integer with: (UEArray of: UESimpleType integer).
	self denyUnifiable: (UEArray of: UESimpleType integer) with: UESimpleType integer.