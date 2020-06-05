testing
testUnifyIntegerWithArray
	"comment stating purpose of message"

	self denyUnifiable: self integer with: (UEArray of: self integer).
	self denyUnifiable: (UEArray of: self integer) with: self integer.