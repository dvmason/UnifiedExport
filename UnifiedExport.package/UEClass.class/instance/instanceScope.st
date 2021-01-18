accessing
instanceScope
	^ instanceScope ifNil: [ instanceScope := classScope newInstanceScope named: self side]