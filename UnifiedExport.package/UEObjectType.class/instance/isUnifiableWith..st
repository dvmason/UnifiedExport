type unification
isUnifiableWith: aUEType
	" I have rules... all my subclasses should let me check first "
	^ self shouldBeImplemented