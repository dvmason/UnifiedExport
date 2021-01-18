transpiling
class: aClass
	^ classes at: aClass ifAbsent: [
		| class |
		class := UEClass for: aClass globalScope: typeChecker globalScope.
		classes at: aClass classSide put: class classSide.
		classes at: aClass instanceSide put: class instanceSide.
		self addInstanceAndClassMethodsFrom: aClass.
		aClass == Object
			ifTrue: [ self addInstanceAndClassMethodsFrom: ProtoObject ]
			ifFalse: [ class superclass: (self class: aClass superclass) ].
		class
	].
