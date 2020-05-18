as yet unclassified
testUnifyIntegerWithArray
	"comment stating purpose of message"

	| typeInferencer |
	typeInferencer := UETypeInferencer new.
	self assert: (typeInferencer unify: UEInteger with: UEBoolean) equals: false.