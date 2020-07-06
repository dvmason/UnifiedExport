as yet unclassified
unify: aTyp link: linkT
"(TVar ({contents = Unbound _} as tv),t') | (t',TVar ({contents = Unbound _} as tv)) -> 
           occurs tv t'; tv := Link t'"

	^ self unifyFail: aTyp