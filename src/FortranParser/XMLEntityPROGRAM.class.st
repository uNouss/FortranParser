Class {
	#name : #XMLEntityPROGRAM,
	#superclass : #XMLNamedEntity,
	#category : #'FortranParser-XMLNodes'
}

{ #category : #visiting }
XMLEntityPROGRAM >> acceptNodeVisitor: aVisitor [
	^aVisitor visitProgramNode: self
]
