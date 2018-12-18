converting
toFamixPROGRAM
	| pgm |
	pgm := FAMIXProgram new
				name: self name ;
				yourself.

	parent ifNotNil: [ (irModel entityAt: parent) toFamix fortranEntities add: pgm ].
	^ pgm