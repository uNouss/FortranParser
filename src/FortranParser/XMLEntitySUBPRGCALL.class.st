Class {
	#name : #XMLEntitySUBPRGCALL,
	#superclass : #XMLEntityAssociation,
	#category : #'FortranParser-XMLNodes'
}

{ #category : #visiting }
XMLEntitySUBPRGCALL >> acceptNodeVisitor: aVisitor [
	^aVisitor visitSubprogramCallNode: self
]
