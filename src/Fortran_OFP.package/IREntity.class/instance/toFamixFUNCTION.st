converting
toFamixFUNCTION
	| fct |
	fct := FAMIXFunction new
				name: self name ;
				yourself.
	
	(irModel entityAt: parent) toFamix fortranEntities add: fct.
	^fct