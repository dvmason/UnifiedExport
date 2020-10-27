accessing
selector: aString
	resultUsed := false.
	selector := aString.
	resultType := UEVariable new.
	targetType := UESelf new.
	argTypes := (1 to: aString numArgs) collect: [: ignore |  UEVariable new ].
