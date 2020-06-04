testing
testSendMultipleMessages
	| m1 v1 v2 result v3 |
	m1 := UEMessage selector: #foo:.
	v1 := UEVariable new.
	v2 := UEVariable new.
	v3 := UEVariable new.
	self fail