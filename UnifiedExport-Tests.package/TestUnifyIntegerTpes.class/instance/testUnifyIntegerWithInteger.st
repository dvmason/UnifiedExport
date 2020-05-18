as yet unclassified
testUnifyIntegerWithInteger
	"comment stating purpose of message"

	| typeInferencer |
	typeInferencer := TypeInferencer new.
	self assert: (typeInferencer unify: UEInteger with: UEInteger) equals: true.