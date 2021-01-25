type inference
blockType: aBlockClosure
	^ self typeOf: aBlockClosure ifAbsentPut: [
		UEBlockClosure new scope: currentScope newBlockScope
	].
