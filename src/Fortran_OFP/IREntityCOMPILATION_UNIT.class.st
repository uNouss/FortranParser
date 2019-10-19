Class {
	#name : #'IREntityCOMPILATION_UNIT',
	#superclass : #IREntityNamed,
	#category : 'Fortran_OFP'
}

{ #category : #accessing }
IREntityCOMPILATION_UNIT >> famixClass [
	^FAMIXCompilationUnit
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
