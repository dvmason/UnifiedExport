accessing
at: name
	^ map at: name ifAbsent: [ enclosingScope at: name ]