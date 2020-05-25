testing
testUnifyIntegerWithArray
	"comment stating purpose of message"

	self denyUnifiable: UEType integer with: (UEArray of: UEType integer).
	self denyUnifiable: (UEArray of: UEType integer) with: UEType integer.