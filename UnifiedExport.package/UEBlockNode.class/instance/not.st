logical operations
not
	^ UEBlockNode new scope: scope; statements: (statements allButLast, {statements last not})