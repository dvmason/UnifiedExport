transpiling
class: aClass
	classes at: aClass ifAbsent: [ 
		classes at: aClass put: UEClass new.
		self addInstanceAndClassMethodsFrom: aClass.
		aClass == Object
			ifTrue: [ self addInstanceAndClassMethodsFrom: ProtoObject ]
			ifFalse: [ self class: aClass superclass ]
	].
	currentClass := aClass