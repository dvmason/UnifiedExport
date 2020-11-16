accessing
classSideScope
	^ classSideScope ifNil: [ classSideScope := classScope newInstanceScope ]