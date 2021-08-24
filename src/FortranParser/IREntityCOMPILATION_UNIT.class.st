Class {
	#name : #'IREntityCOMPILATION_UNIT',
	#superclass : #IREntityNamed,
	#category : #'FortranParser-IRModel'
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
	^(famix functions select: [ :f | f name = aString ])
		ifEmpty: [
			famix module
				ifNil: [ #() ]
				ifNotNil: [ :module | (module functions select: [ :f | f name = aString ]) ]
		]

]

{ #category : #resolving }
IREntityCOMPILATION_UNIT >> resolveLocalReference: aString [
	^(self famix functions select: [ :famixFct | famixFct name = aString ]) ,
		(self resolveLocalVariable: aString)
]

{ #category : #resolving }
IREntityCOMPILATION_UNIT >> resolveLocalVariable: aString [
	^(self famix globalVariables select: [ :famixVar | famixVar name = aString ])
]

{ #category : #converting }
IREntityCOMPILATION_UNIT >> setFamixParent [
	famix mooseModel: parentIR famix
]
