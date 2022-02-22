Class {
	#name : #XMLEntitySUBPROGRAM,
	#superclass : #XMLEntityFUNCTION,
	#category : #'FortranParser-XMLNodes'
}

{ #category : #visiting }
XMLEntitySUBPROGRAM >> acceptNodeVisitor: aVisitor [
	^aVisitor visitSubprogramNode: self
]
