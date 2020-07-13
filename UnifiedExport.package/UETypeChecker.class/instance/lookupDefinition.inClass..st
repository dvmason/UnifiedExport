type inference
lookupDefinition: aUEMessage inClass: aClass
	| temp |
	temp := aClass.
	[ temp isNil ] whileFalse: [
		self scoped: (self typeOfClass: temp) do: [
			temp methodDict at: aUEMessage selector ifPresent: [: method |
				^ self typeOfMethod: method
		]].
		temp := temp superclass.
	].
	^ self error: 'No such method: ', aUEMessage selector, ' from class: ', aClass name