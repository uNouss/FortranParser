Class {
	#name : #XMLEntityVARIABLE,
	#superclass : #XMLNamedEntity,
	#category : #'FortranParser-XMLNodes'
}

{ #category : #visiting }
XMLEntityVARIABLE >> acceptNodeVisitor: aVisitor [
	^aVisitor visitVariableNode: self
]
