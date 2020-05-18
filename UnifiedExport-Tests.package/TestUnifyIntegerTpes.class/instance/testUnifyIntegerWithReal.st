as yet unclassified
testUnifyIntegerWithReal
	"comment stating purpose of message"

	| typeInferencer |
	typeInferencer := UETypeInferencer new.
	self assert: (typeInferencer unify: UEInteger with: UEReal) equals: false.