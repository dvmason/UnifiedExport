testing
testFindSuperclass
	| m1 v1 v2 v3 m2 m3 m4 |
	v1 := UEVariable new.
	m1 := v1 send: #asInteger with: #().
	v2 := UEVariable new.
	m2 := v2 send: #asFloat with: #().
	v3 := UEVariable new.
	m3 := v3 send: #asInteger with: #().
	m4 := v3 send: #asFloat with: #().
	v1 unifyWith: v3.
	v1 unifyWith: v2.
	v2 unifyWith: self integer.
	v3 unifyWith: self real.
	self assert: v1 commonType equals: self number.
