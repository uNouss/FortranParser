converting
toFamixMODULE
	| mod |
	mod := FAMIXModule new
				name: self name ;
				yourself.
.
	parent ifNotNil: [ (irModel entityAt: parent) toFamix fortranEntities add: mod ].
	^ mod