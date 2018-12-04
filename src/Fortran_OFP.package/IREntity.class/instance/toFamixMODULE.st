converting
toFamixMODULE
	| mod |
	mod := FAMIXModule new
				name: self name ;
				yourself.
	"root module as no parent"
	parent ifNotNil: [ mod parentScope: (irModel entityAt: parent) toFamix ].
	^ mod