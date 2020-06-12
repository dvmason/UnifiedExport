type unification
unifyFail: aTyp
	^ self error: self asString,' can''t unify with ',aTyp asString