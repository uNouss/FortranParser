converting
toFamixFUNCTION
	^FAMIXFunction new
		name: self name ;
		container: (irModel entityAt: parent) toFamix ;
		yourself