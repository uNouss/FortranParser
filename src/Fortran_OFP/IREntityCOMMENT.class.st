Class {
	#name : #IREntityCOMMENT,
	#superclass : #IREntity,
	#category : #'Fortran_OFP-IRModel'
}

{ #category : #accessing }
IREntityCOMMENT >> famixClass [
	^FamixFortranComment
]

{ #category : #testing }
IREntityCOMMENT >> isKind: aString [
	^ aString = 'COMMENT'
]

{ #category : #testing }
IREntityCOMMENT >> isNamed: aString [
	^false
]

{ #category : #converting }
IREntityCOMMENT >> setFamixParent [
	famix container: (parentIR entityAtKey: parentKey) toFamix
]

{ #category : #converting }
IREntityCOMMENT >> toFamix [
	^super toFamix
		content: (data at: 'content') ;
		yourself.
]
