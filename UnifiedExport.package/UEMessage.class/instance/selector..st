accessing
selector: aString 
	selector := aString.
	targetType := UEObjectType new.
	resultType := UEVariable new.
	argTypes := (1 to: aString numArgs) collect: [: ignore |  UEVariable new ].
