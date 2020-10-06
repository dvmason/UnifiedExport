type inference
externalMessage: selector class: aClass 
	| type method |
	type := UEMessage selector: selector.
	type targetType: (self typeOfClass: aClass classSide).
	method := self lookupDefinition: type inClass: aClass classSide.
	self unify: (self typeOfMethod: method withSelf: type targetType) with: type.
	^ type