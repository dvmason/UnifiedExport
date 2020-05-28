testing
testUnifyMessage
	"comment stating purpose of message"
	| m1 m2 m3 m4|
	m1 := UEMessage selector: #foo:.
	m2 := UEMessage of: UESimpleType integer to: UESimpleType boolean for: (Array with: (UESimpleType integer)).
	m3 := UEMessage of: UESimpleType integer to: UESimpleType integer for: (Array with: (UESimpleType integer)).
	m4 := UEMessage of: UESimpleType integer to: UESimpleType boolean for: (Array with: (UESimpleType boolean)).
	self assertUnifiable: m1 with: m2.
	self denyUnifiable: m1 with: m3.
	self denyUnifiable: m1 with: m4.