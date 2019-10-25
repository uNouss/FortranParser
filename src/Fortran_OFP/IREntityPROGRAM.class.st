Class {
	#name : #IREntityPROGRAM,
	#superclass : #IREntityNamed,
	#category : #'Fortran_OFP-IRModel'
}

{ #category : #accessing }
IREntityPROGRAM >> famixClass [
	^FamixFortranProgram 
]

{ #category : #testing }
IREntityPROGRAM >> isKind: aString [
	^ aString = 'PROGRAM'
]

{ #category : #resolving }
IREntityPROGRAM >> resolveFunction: aString [ 
	^parentIR resolveFunction: aString 

]

{ #category : #resolving }
IREntityPROGRAM >> resolveLocalReference: aString [
	^self resolveLocalVariable: aString

]

{ #category : #resolving }
IREntityPROGRAM >> resolveLocalVariable: aString [
	^self famix localVariables select: [ :famixVar | famixVar name = aString ]

]

{ #category : #resolving }
IREntityPROGRAM >> resolveNonLocalReference: aString [
	^(self famix importedEntities flatCollect: [ :famixModule |
		(famixModule functions select: [ :famixFunction | famixFunction name = aString ]) ]) ,
	 (self resolveNonLocalVariable: aString )
]

{ #category : #resolving }
IREntityPROGRAM >> resolveNonLocalVariable: aString [
	^self famix importedEntities flatCollect: [ :famixModule |
		(famixModule globalVariables select: [ :famixVar | famixVar name = aString ])
	]
]

{ #category : #converting }
IREntityPROGRAM >> setFamixParent [
	"famix compilationUnit: (parentEntity entityAt: parentKey) toFamix"
]
