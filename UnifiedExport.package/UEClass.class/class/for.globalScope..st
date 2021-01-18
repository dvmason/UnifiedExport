instance creation
for: aClass globalScope: globalScope
	| c m classScope |
	classScope := globalScope newClassScope: aClass instanceSide name.
	c := self new class: aClass instanceSide scope: classScope.
	m := UEMetaClass new class: aClass classSide scope: classScope; otherSide: c.
	c otherSide: m.
	^ aClass isClassSide ifTrue: [ m ] ifFalse: [ c ]