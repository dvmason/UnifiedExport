*UnifiedExport-Tests
selector: aString result: resultType args: anArrayOfUEType
	| result |
	result := self selector: aString.
	result	argTypes with: anArrayOfUEType do: [: t1 : t2 |
			t1 unifiableWith: t2.
	].
	result	resultType unifiableWith: resultType.
	result	argTypes with: anArrayOfUEType do: [: t1 : t2 |
			t1 unifyWith: t2.
	].
	result	resultType unifyWith: resultType.
	^ result