Class {
	#name : #XMLEntityCOMPILATIONUNIT,
	#superclass : #XMLNamedEntity,
	#category : #'FortranParser-IRModel'
}

{ #category : #accessing }
XMLEntityCOMPILATIONUNIT >> nameAttribute [ 
	^self pathAttribute
]

{ #category : #accessing }
XMLEntityCOMPILATIONUNIT >> pathAttribute [
	^self attributeAt: 'path'
]
