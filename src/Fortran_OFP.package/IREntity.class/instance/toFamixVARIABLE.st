converting
toFamixVARIABLE
	"should test what is the parent to decide what kind of variable we want to create"
	| famixParent |
	famixParent := (irModel entityAt: parent) toFamix.
	^(famixParent isKindOf: FAMIXModule)
		ifTrue: [ FAMIXGlobalVariable new
						name: self name ;
						parentScope: famixParent ;
						yourself ]
		ifFalse: [ FAMIXLocalVariable new
						name: self name ;
						parentBehaviouralEntity: famixParent ;
						yourself	]