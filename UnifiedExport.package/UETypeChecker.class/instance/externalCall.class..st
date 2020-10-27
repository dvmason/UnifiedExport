type inference
externalCall: selector class: aClass 
	| type def |
	type := UEMessage selector: selector.
	type targetType: (self typeOfClass: aClass).
	def := self lookupDefinition: type inClass: aClass.
	self unify: def with: type.
	self transitiveClosure.
	^ type