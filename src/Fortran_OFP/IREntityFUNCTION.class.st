Class {
	#name : #IREntityFUNCTION,
	#superclass : #IREntityNamed,
	#category : #'Fortran_OFP-IRModel'
}

{ #category : #accessing }
IREntityFUNCTION >> famixClass [
	^FamixFortranFunction
]

{ #category : #testing }
IREntityFUNCTION >> isKind: aString [
	^ aString = 'FUNCTION'
]

{ #category : #resolving }
IREntityFUNCTION >> resolveFunction: aString [ 
	^parentIR resolveFunction: aString 
]

{ #category : #resolving }
IREntityFUNCTION >> resolveLocalReference: aString [
	^self resolveLocalVariable: aString
]

{ #category : #resolving }
IREntityFUNCTION >> resolveLocalVariable: aString [
	^famix localVariables select: [ :famixVar | famixVar name = aString ]
]

{ #category : #converting }
IREntityFUNCTION >> setFamixParent [
	famix functionOwner: (parentIR famix)
]
