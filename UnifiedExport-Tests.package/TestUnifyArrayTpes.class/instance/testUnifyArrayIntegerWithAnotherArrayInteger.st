as yet unclassified
testUnifyArrayIntegerWithAnotherArrayInteger
	"comment stating purpose of message"
	| typeInferencer aArrayOfInteger a2ndArrayOfInteger |
	typeInferencer := UETypeInferencer new.
	aArrayOfInteger := UEArray new.
	aArrayOfInteger argType: UEInteger.
	a2ndArrayOfInteger := UEArray new.
	a2ndArrayOfInteger argType: UEInteger.
	
	self assert: (typeInferencer unify: aArrayOfInteger with: a2ndArrayOfInteger ) equals: true.