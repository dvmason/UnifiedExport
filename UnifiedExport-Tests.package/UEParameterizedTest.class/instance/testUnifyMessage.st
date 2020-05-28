testing
testUnifyMessage
	"comment stating purpose of message"
	| m1 m2 m3 m4 |
	m1 := UEMessage selector: #foo:.
	m2 := UEMessage selector: #foo:.
	m3 := UEMessage selector: #foo:bar:.
	m4 := UEMessage selector: #foo.
	self assertUnifiable: m1 with: m2.
	self denyUnifiable: m1 with: m3.
	self denyUnifiable: m1 with: m4.