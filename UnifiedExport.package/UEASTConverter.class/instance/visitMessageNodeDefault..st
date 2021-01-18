visiting
visitMessageNodeDefault: aRBMessageNode
	| receiver message arguments |
	receiver := UEType new.
	arguments := aRBMessageNode arguments collect: [: ignored | UEType new ].
	message := UEMessageNode new
		selector: aRBMessageNode selector
		receiver: receiver
		arguments: arguments.
	receiver unifyWith: (self visit: aRBMessageNode receiver).
	transpiler selector: aRBMessageNode selector forReceiver: receiver.
	message arguments with: (self visitAll: aRBMessageNode arguments) do: [: each : visited |
		each unifyWith: visited ].
	^ message