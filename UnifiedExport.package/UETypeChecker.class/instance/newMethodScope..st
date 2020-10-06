scopes
newMethodScope: aMethod 
	| cType |
	cType := self typeOfClass: aMethod methodClass.