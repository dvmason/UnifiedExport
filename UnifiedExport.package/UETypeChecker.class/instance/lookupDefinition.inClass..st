type inference
lookupDefinition: aUEMessage inClass: aClass
	| temp |
	temp := aClass.
	[ temp isNil ] whileFalse: [
		temp = Behavior ifFalse: [
			self scoped: (self typeOfClass: temp) do: [
				temp methodDict at: aUEMessage selector ifPresent: [: method |
					replacementMethods at: method ifPresent: [: altMethod | ^ altMethod ].
					^ method
		]]].
		temp := temp superclass.
	].
	^ self error: 'No such method: ', aUEMessage selector, ' from class: ', aClass name