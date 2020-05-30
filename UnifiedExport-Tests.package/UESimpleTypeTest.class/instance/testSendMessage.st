tests
testSendMessage
	| m1 v1 v2 result |
	m1 := UEMessage selector: #+.
	v1 := UESimpleType integer.
	v2 := UESimpleType integer.
	result := v1 send: m1 with: { v2 }.
	self assertSameSet: m1 targetType with: v1.
	self assertSameSet: m1 resultType with: result.
	self assertSameSet: m1 argTypes first with: v2.
