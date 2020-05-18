as yet unclassified
testUnifyArrayIntegerWithIntegerArray
	"comment stating purpose of message"
	| typeInferencer aArrayOfInteger a2ndArrayOfInteger |
	typeInferencer := TypeInferencer new.
	aArrayOfInteger := UEArray new: UEInteger.
	a2ndArrayOfInteger := UEArray new: UEInteger.
	
	self assert: (typeInferencer unify: aArrayOfInteger with: a2ndArrayOfInteger ) equals: true.