testing
testSendMessage
	| m1 v1 v2 v3 m2 m3 |
	v1 := UEVariable new.
	v2 := UEVariable new.
	v3 := UEVariable new.
	v1 unifyWith: v3.
	m1 := v3 send: #foo: with: { v2 }.
	self assert: m1 argTypes first sameSetAs: v2.
	self assert: m1 sameSetAs: v3 find messages first first.
	self assert: m1 sameSetAs: v1 find messages first first.
	self denySameSet: v1 with: v2.
	self denySameSet: v1 with: m1 resultType.
	m2 := v3 send: #bar: with: { v2 }.
	m3 := v1 send: #blat: with: { v2 }.
	self assert: v3 find messages size equals: 3.
	self assert: v1 find messages size equals: 3.
