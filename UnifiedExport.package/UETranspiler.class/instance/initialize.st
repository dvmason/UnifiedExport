initialization
initialize
	typeMap := WeakKeyDictionary new. " this should never be iterated. It's weak because its keys - classes, methods, etc. may be garbage collected at some point "
