creating ast
message: selector receiver: receiverVisited parameters: aCollection 
	| receiver message arguments |
	receiver := typeChecker bind: receiverVisited to: UEObjectType new.
	arguments := aCollection collect: [: arg | typeChecker bind: arg to: UEObjectType new ].
	message := UEMessageNode new
		selector: selector
		receiver: receiver
		arguments: arguments.
	self selector: selector forReceiver: receiverVisited.
	typeChecker send: message.
	^ message