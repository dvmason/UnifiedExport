type inference
transitiveClosure
	| methods classes |
	[ classesToInitialize isEmpty ] whileFalse: [
		classes := classesToInitialize.
		classesToInitialize := OrderedCollection new.
		classes do: [: class |
			classType := self externalMessage: #initialize class: class.
		].
		[ methodsToType isEmpty ] whileFalse: [
			methods := methodsToType.
			methodsToType := OrderedCollection new.
			methods do: [: method |
				classType := self typeOfClass: method methodClass.
				self visitNode: method ast.
	]]].
