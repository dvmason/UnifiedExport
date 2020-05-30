*UnifiedExport-Tests
selector: aString target: targetType result: resultType args: aArrayOfUEType
	| result |
	result := self selector: aString.
	result	targetType unifiableWith: targetType.
	result	argTypes with: aArrayOfUEType do: [: t1 : t2 |
			t1 unifiableWith: t2.
	].
	result	resultType unifiableWith: resultType.
	^ result