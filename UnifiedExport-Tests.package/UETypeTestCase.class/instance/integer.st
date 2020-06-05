accessing
integer
	^ integer ifNil: [ integer := UEClassType for: SmallInteger ]