Class {
	#name : #XMLEntityMODULE,
	#superclass : #XMLNamedEntity,
	#category : #'FortranParser-XMLNodes'
}

{ #category : #visiting }
XMLEntityMODULE >> acceptNodeVisitor: aVisitor [
	^aVisitor visitModuleNode: self
]
