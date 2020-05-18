as yet unclassified
testUnifyIntegerWithInteger
	"comment stating purpose of message"

	| typeInferencer |
	typeInferencer := UETypeInferencer new.
	self assert: (typeInferencer unify: UEInteger with: UEInteger) equals: true.