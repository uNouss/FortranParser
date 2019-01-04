converting
toFamix: aMooseModel
	| fmx |
	fmx := self toFamix.
	fmx mooseModel ifNil: [ 
		fmx mooseModel: aMooseModel ].
	(fmx mooseModel = aMooseModel)
		ifFalse: [ 
			fmx mooseModel remove: fmx.
			fmx mooseModel: aMooseModel ].
	^ fmx