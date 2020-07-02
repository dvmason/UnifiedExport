as yet unclassified
typeOf: env 
   (env includesKey: varname) ifTrue: [ ^ ToyTVar tv: (env at: varname) ].
   ^ self newvar.