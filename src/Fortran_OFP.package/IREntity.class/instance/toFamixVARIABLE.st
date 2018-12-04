converting
toFamixVARIABLE
	"should test what is the parent to decide what kind of variable we want to create"
	^FAMIXGlobalVariable new
		name: self name ;
		parentScope: (irModel entityAt: parent) toFamix ;
		yourself