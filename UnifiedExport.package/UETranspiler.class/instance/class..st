transpiling
class: aClass
	| class |
	currentClass := classes at: aClass ifAbsent: [
		class := UEClass new.
		classes at: aClass put: class.
		class class: aClass globalScope: globalscope.
		self addInstanceAndClassMethodsFrom: aClass.
		aClass == Object
			ifTrue: [ self addInstanceAndClassMethodsFrom: ProtoObject ]
			ifFalse: [ self class: aClass superclass ].
		class
	].
