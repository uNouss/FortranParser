Class {
	#name : #'IREntityCOMPILATION_UNIT',
	#superclass : #IREntityNamed,
	#category : #'Fortran_OFP-IRModel'
}

{ #category : #accessing }
IREntityCOMPILATION_UNIT >> famixClass [
	^FamixFortranCompilationUnit
]

{ #category : #testing }
IREntityCOMPILATION_UNIT >> isKind: aString [
	^ aString = 'COMPILATION_UNIT'
]

{ #category : #resolving }
IREntityCOMPILATION_UNIT >> resolveFunction: aString [ 
	^(famix module functions
						select: [ :f | f name = aString ])
		ifEmpty: [ 	famix module usedModules flatCollect: [ :m |
			m functions select: [ :f | f name = aString ]
		] ]

]

{ #category : #resolving }
IREntityCOMPILATION_UNIT >> resolveLocalReference: aString [
	^IREntityMODULE resolveLocalName: aString forFamixModule: famix module
]

{ #category : #converting }
IREntityCOMPILATION_UNIT >> setFamixParent [
	famix mooseModel: parentIR famix
]
