private
unify: aUEType with: a2ndUEType
	"true if the two types maybe unified, false if not"
	
	^aUEType isUnifiableWith: a2ndUEType.