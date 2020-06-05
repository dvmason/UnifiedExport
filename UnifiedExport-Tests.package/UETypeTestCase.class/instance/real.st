accessing
real
	^ real ifNil: [ real := UEClassType for: SmallFloat64 ]