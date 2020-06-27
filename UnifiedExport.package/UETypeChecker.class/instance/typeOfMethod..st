accessing
typeOfMethod: aCompiledMethod
	^ self typeOf: aCompiledMethod orPut: [
		methodsToType add: aCompiledMethod.
		UEMethodDefinition for: aCompiledMethod
	]