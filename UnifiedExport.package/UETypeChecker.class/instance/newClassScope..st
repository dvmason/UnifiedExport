scopes
newClassScope: aString 
	^ UEClassScope new name: aString; enclosingScope: currentScope