visiting
visitAll: aCollection 
	^ aCollection collect: [: aRBNode | self visit: aRBNode ] as: Array