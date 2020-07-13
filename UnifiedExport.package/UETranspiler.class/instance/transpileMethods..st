visitor
transpileMethods: aCollectionOfMethods
	aCollectionOfMethods do: [: aMethod |
		self addClassesToTranspile: { aMethod methodClass }.
		typeChecker visitNode: aMethod ast.
		methods add: aMethod.
	].
