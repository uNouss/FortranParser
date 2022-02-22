Class {
	#name : #XMLEntityNAMEREF,
	#superclass : #XMLEntityAssociation,
	#category : #'FortranParser-XMLNodes'
}

{ #category : #visiting }
XMLEntityNAMEREF >> acceptNodeVisitor: aVisitor [
	^aVisitor visitNameRefNode: self
]
