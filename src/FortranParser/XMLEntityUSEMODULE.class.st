Class {
	#name : #XMLEntityUSEMODULE,
	#superclass : #XMLEntityAssociation,
	#category : #'FortranParser-XMLNodes'
}

{ #category : #visiting }
XMLEntityUSEMODULE >> acceptNodeVisitor: aVisitor [
	^aVisitor visitUseModuleNode: self
]

{ #category : #accessing }
XMLEntityUSEMODULE >> targetAttribute [
	^self attributeAt: 'name'
]
