testing
testSendMessage
	| m1 v1 v2 result v3 |
	m1 := UEMessage selector: #foo:.
	v1 := UEVariable new.
	v2 := UEVariable new.
	v3 := UEVariable new.
	v1 unifyWith: v3.
	result := v3 send: m1 with: { v2 }.
	self assertSameSet: m1 resultType with: result.
	self assertSameSet: m1 argTypes first with: v2.
	self assertSameSet: m1 with: v3 find messages first.
	self assertSameSet: m1 with: v1 find messages first.
	self denySameSet: v1 with: v2.
	self denySameSet: v1 with: result.
	result := v3 send: (UEMessage selector: #bar:) with: { v2 }.
	result := v1 send: (UEMessage selector: #blat:) with: { v2 }.
	self assert: v3 find messages size equals: 3.
	self assert: v1 find messages size equals: 3.
