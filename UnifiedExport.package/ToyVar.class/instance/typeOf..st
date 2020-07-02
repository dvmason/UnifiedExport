as yet unclassified
typeOf: env 
   (env includesKey: varname) ifTrue: [ ^ env at: varname ].
   ^ varname.