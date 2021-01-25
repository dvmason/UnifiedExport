testing - examples
toDoWithBlock
	1 to: 10 do: [: foo | self sideEffectThenReturnInteger: foo ].
