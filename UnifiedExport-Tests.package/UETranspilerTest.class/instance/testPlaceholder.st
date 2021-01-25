tests
testPlaceholder
	| method |
	method := transpiler transpile: UEClass1ForTest >> #methodWithPlaceHolderOverride.
	self assert: transpiler selectors size equals: 1.
