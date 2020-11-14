accessing
selector: aString 
	selector := aString.
	type := (UEMethodDefinition selector: aString) scope: UEMethodScope new.
	statements := OrderedCollection new.
