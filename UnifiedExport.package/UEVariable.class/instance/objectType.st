accessing
objectType
	| ueObjectType |
	ueObjectType := UEObjectType new.
	self unifiableWith: ueObjectType.
	^ueObjectType.