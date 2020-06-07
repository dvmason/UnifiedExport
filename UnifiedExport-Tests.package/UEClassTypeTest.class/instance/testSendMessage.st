tests
testSendMessage
	| m1 v1 v2 |
	v1 := self integer.
	v2 := self integer.
	m1 := v1 send: #+ with: { v2 }.
	self assert: m1 argTypes first sameSetAs: v2.
