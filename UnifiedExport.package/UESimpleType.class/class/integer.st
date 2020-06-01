canonical values
integer
	^ integer ifNil: [ 
		integer := self new tag: #integer ]