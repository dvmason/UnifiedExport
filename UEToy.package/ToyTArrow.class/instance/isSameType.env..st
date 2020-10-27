comparing
isSameType: aToyTyp env: aMap
	"check if the passed in type is a ToyTArrow"
	aToyTyp isToyTArrow ifFalse: [ ^ aToyTyp isSameType: self env: aMap "ask the nonTArrow aToyTyp if they are the same type."].
	
	^ (typ1 addTypeMap: aToyTyp typ1 to: aMap) and: [
			typ2 isSameType: aToyTyp typ2 env: aMap
		]