enumerating
withSelector: selector altClassDo: block
	| altClass |
	(self classSide lookupSelector: selector) ifNil: [ ^ self ].
	altClass := self instanceSide evaluate: selector.
	altClass := self isClassSide ifTrue: [
		block value: altClass classSide
	] ifFalse: [
		block value: altClass instanceSide
	].
