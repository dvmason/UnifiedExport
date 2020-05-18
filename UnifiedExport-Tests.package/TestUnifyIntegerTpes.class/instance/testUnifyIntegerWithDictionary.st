as yet unclassified
testUnifyIntegerWithDictionary
	"comment stating purpose of message"

	| typeInferencer |
	typeInferencer := TypeInferencer new.
	self assert: (typeInferencer unify: UEInteger with: UEBoolean) equals: false.