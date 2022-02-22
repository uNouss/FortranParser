Class {
	#name : #XMLEntityFUNCTION,
	#superclass : #XMLNamedEntity,
	#category : #'FortranParser-XMLNodes'
}

{ #category : #visiting }
XMLEntityFUNCTION >> acceptNodeVisitor: aVisitor [
	^aVisitor visitFunctionNode: self
]
