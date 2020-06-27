accessing
typeOfClass: aClass 
	^ self typeOf: aClass orPut: [
			aClass isInstanceSide ifTrue: [
				classesToInitialize add: aClass classSide.
			].
			UEClassType for: aClass
		]