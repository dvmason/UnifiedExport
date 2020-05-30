visitor
transitiveClosure
	" if performance is a problem, could have the addXXXToTranspile methods keep track of the new ones added and go through the new classes and all selectors and the new selectors and all classes to build up the set of methodsToTranspile "
	| methodsToTranspile |
	[ moreToProcess ] whileTrue: [
		moreToProcess := false.
		methodsToTranspile := OrderedCollection new.
		classes do: [: aClass |
		" go through all the methods of the class and if any selectors are in the set, add them to the methodsToTranspile collection "
		].
		self transpileMethods: methodsToTranspile.
	].