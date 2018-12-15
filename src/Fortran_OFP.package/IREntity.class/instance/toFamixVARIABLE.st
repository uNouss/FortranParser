converting
toFamixVARIABLE
	"should test what is the parent to decide what kind of variable we want to create"
	| owner famixOwner class belongsToPredicate |
	owner := irModel entityAt: parent.
	owner
		ifNil: [
			famixOwner := nil.
			class := FAMIXGlobalVariable.
			belongsToPredicate := #parentScope: ]
		ifNotNil: [
			famixOwner := owner toFamix.
			famixOwner isBehaviouralEntity
				ifTrue: [
					class := FAMIXLocalVariable.
					belongsToPredicate := #parentBehaviouralEntity: ]
				ifFalse: [
					class := FAMIXGlobalVariable.
					belongsToPredicate := #parentScope:]].
	
	^class new
		name: self name ;
		perform: belongsToPredicate with: famixOwner ;
		yourself