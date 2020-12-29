visiting
visitMessageNodeDefault: aRBMessageNode
	| receiver message arguments |
	receiver := UEType new.
	arguments := aRBMessageNode arguments collect: [ UEType new ].
	message := UEMessageNode new
		selector: aRBMessageNode selector
		receiver: receiver
		arguments: arguments.
	receiver unifyWith: (self visit: aRBMessageNode receiver).
	self selector: aRBMessageNode selector forReceiver: receiver.
	message arguments with: (self visitAll: aRBMessageNode arguments) do: [: each : visited |
		each unifyWith: visited ].
	^ message