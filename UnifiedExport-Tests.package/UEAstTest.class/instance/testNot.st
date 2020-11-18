tests
testNot
	| node |
	node := UETempVariable new.
	self assert: node not not equals: node.
	self assert: (UEBlockNode new addStatement: node) not statements last not equals: node.
