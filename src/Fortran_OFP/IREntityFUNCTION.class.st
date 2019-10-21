Class {
	#name : #IREntityFUNCTION,
	#superclass : #IREntityNamed,
	#category : #'Fortran_OFP-IRModel'
}

{ #category : #accessing }
IREntityFUNCTION >> famixClass [
	^FamixFortranFunction
]

{ #category : #resolving }
IREntityFUNCTION >> resolveFunction: aString [ 
	^parentIR resolveFunction: aString 
]

{ #category : #resolving }
IREntityFUNCTION >> resolveLocalReference: aString [
	^famix localVariables select: [ :famixVar | famixVar name = aString ]
		
]

{ #category : #converting }
IREntityFUNCTION >> setFamixParent [
	famix fortranOwner: (parentIR famix).
	parentIR famix class = FamixFortranCompilationUnit ifFalse: [
		famix container: (parentIR famix)]
]
