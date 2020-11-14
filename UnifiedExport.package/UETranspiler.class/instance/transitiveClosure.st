transpiling
transitiveClosure
	| processing |
	[ methodsToTranspile isEmpty ] whileFalse: [
		processing := methodsToTranspile.
		methodsToTranspile := IdentitySet new.
		processing do: [: aMethod |
			self transpileMethod: aMethod.
		].
	].