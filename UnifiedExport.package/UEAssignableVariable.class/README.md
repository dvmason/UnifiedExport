I represent variables that can be assigned to.

I track whether the variable can ever be referenced as nil. (i.e. could be referenced before assignment or is bound to nil at any point).
The reason is that for some targets, if I contain only one primitive type, and can't be nil, then my type can be that type... otherwise I have to be an object.