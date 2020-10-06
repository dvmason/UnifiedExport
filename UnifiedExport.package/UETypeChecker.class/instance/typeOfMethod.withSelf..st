accessing
typeOfMethod: aCompiledMethod withSelf: target
	self flag: #ToDo. " push target type on typeStack (and pop after) "
	^ self typeOfMethod: aCompiledMethod
