Class {
	#name : #IREntityFUNCTION,
	#superclass : #IREntityNamed,
	#category : 'Fortran_OFP'
}

{ #category : #accessing }
IREntityFUNCTION >> famixClass [
	^FAMIXFunction
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
	parentIR famix class = FAMIXCompilationUnit ifFalse: [
		famix container: (parentIR famix)]
]
