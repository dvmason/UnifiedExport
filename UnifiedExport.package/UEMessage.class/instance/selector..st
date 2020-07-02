accessing
selector: aString
	resultUsed := false.
	selector := aString.
	resultType := self newType.
	targetType := UESelf new.
	argTypes := (1 to: aString numArgs) collect: [: ignore |  self newType ].
