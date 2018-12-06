converting
toFamixCOMMENT
	^FAMIXComment new
		content: (data at: 'content') ;
		container: (irModel entityAt: parent) toFamix ;
		yourself