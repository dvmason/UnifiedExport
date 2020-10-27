initialization
initialize
	| count |
	count := NextVar := NextVar + 1.
	string := ''.
	[
		string := ('abcdefghijklmnopqrstuvwxyz' at: count-1%26+1) asString,string.
		count > 26 and: [count := count-1 // 26. true]
	] whileTrue
