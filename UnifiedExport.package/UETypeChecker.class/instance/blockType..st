type inference
blockType: aBlockClosure
	^ self typeOf: aBlockClosure orPut: [
		UEBlockClosure new scope: currentScope newScope
	].
