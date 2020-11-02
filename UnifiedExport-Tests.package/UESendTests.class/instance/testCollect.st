testing
testCollect
	| m1 v1 bc |
	v1 := UEArray of: self integer.
	bc := UEBlockClosure new parameters: 1.
	m1 := v1 send: #collect: with: bc.
	self assert: bc parameters first sameSetAs: self integer.
