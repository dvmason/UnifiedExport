canonical values
real
	^ real ifNil: [ real := self new tag: #real ]