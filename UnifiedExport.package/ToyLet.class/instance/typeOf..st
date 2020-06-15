as yet unclassified
typeOf: aMapList 
	varname := self newvar.
	^ exp2 typeOf: (varname arrow: (exp1 typeOf: aMapList) prependTo: aMapList)