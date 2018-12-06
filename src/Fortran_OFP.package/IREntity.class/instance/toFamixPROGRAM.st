converting
toFamixPROGRAM
	self flag: 'create FAMIXPRogram entity'.
	^FAMIXFunction new
		name: self name ;
		"programs have no parent"
		yourself.
