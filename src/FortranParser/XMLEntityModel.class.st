Class {
	#name : #XMLEntityModel,
	#superclass : #XMLEntity,
	#category : #'FortranParser-XMLNodes'
}

{ #category : #visiting }
XMLEntityModel >> acceptNodeVisitor: aVisitor [
	^aVisitor visitModelNode: self
]
