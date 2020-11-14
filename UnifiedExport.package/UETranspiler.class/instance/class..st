transpiling
class: aClass
	| class |
	classes at: aClass ifAbsent: [
		class := UEClass new.
		classes at: aClass put: class.
		self addMethods: aClass to: class.
		aClass == Object ifTrue: [
			self addMethods: ProtoObject to: class.
		] ifFalse: [
			self class: aClass superclass
		].
	].
	currentClass := aClass.
