Class {
	#name : #XMLEntityCOMPILATIONUNIT,
	#superclass : #XMLNamedEntity,
	#category : #'FortranParser-XMLNodes'
}

{ #category : #visiting }
XMLEntityCOMPILATIONUNIT >> acceptNodeVisitor: aVisitor [
	^aVisitor visitCompilationUnitNode: self
]

{ #category : #accessing }
XMLEntityCOMPILATIONUNIT >> nameAttribute [ 
	^self pathAttribute
]

{ #category : #accessing }
XMLEntityCOMPILATIONUNIT >> pathAttribute [
	^self attributeAt: 'path'
]
