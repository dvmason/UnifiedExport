type inference
methodType: aMethod
	^ self typeOf: aMethod orPut: [
		UEMethodDefinition selector: aMethod selector
	].
