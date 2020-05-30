*UnifiedExport-Tests
selector: aString target: targetType result: resultType args: aArrayOfUEType
	^ (self selector: aString)
		targetType: targetType;
		argTypes: aArrayOfUEType; 
		resultType: resultType;
		yourself