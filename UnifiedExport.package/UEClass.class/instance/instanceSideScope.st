accessing
instanceSideScope
	^ instanceSideScope ifNil: [ instanceSideScope := classScope newInstanceScope ]