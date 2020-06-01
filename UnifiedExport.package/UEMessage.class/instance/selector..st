accessing
selector: aString 
	selector := aString.
	resultType := UEVariable new.
	argTypes := (1 to: aString numArgs) collect: [: ignore |  UEVariable new ].
