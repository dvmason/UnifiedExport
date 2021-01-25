testing - examples
toDoByWithBlock
	1 to: 10  by: 3 do: [: foo | self sideEffectThenReturnInteger: foo ].
