accessing
typeOfMethod: aCompiledMethod
	| resultType mType |
	^ self typeOf: aCompiledMethod ifAbsentPut: [
		self halt.
		mType := UEMethodDefinition for: aCompiledMethod.
		typeMap at: aCompiledMethod put: mType.
		resultType := self visitNode: aCompiledMethod ast.
		mType scope: (self newMethodScope: aCompiledMethod); resultType: resultType
	]