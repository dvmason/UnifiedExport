accessing
typeOfClass: aClass 
	| type cType |
	^ self typeOf: aClass ifAbsent: [
			type := UEClassType for: aClass.
			typeMap at: aClass put: type.
			aClass isInstanceSide ifTrue: [
				cType := self typeOfClass: aClass classSide.
				type scope: cType scope newInstanceScope.
				" make class variable scope right "
			] ifFalse: [
				self flag: #ToDo. " probably should be supcrclass classScope instead of globalScope "
				type scope: (self globalScope newClassScope: aClass instanceSide name) newInstanceScope.
				self externalMessage: #initialize class: aClass instanceSide.
				classesToInitialize add: aClass.
			].
			type
		]