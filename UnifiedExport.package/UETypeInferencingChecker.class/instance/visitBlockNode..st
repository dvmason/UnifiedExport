visiting
visitBlockNode: aBlockNode
	^ self scoped: (self blockType: aBlockNode) do: [
		super visitBlockNode: aBlockNode
	]