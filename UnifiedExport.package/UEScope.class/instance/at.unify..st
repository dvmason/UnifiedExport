accessing
at: name unify: aUEType
	^ map at: name ifPresent: [: previous | previous unifyWith: aUEType ] ifAbsentPut: [ UEVariable new ]