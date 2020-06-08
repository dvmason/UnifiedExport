type unification
unifyWith: other
	| myRoot otherRoot root |
	myRoot := self find.
	otherRoot := other find.
	myRoot unifiableWith: otherRoot.
	root := myRoot union: otherRoot.
	root == myRoot ifTrue: [
		other unifyToRoot: root.
"		root addReference: other.
"	] ifFalse: [
		self unifyToRoot: root.
"		root addReference: self.
"	].
	^ root