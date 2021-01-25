visiting
visitLiteralArrayNode: aRBLiteralArrayNode 
	^ UELiteralArrayNode new contents: (self visitAll: aRBLiteralArrayNode contents)