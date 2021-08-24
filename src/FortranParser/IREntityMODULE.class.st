Class {
	#name : #IREntityMODULE,
	#superclass : #IREntityNamed,
	#category : #'FortranParser-IRModel'
}

{ #category : #accessing }
IREntityMODULE >> famixClass [
	^FamixFortranModule
]

{ #category : #testing }
IREntityMODULE >> isKind: aString [
	^ aString = 'MODULE'
]

{ #category : #resolving }
IREntityMODULE >> resolveFunction: aString [
	^(self resolveLocalFunction: aString)
		ifEmpty: [ self resolveImportedFunction: aString ]

]

{ #category : #resolving }
IREntityMODULE >> resolveImportedFunction: aString [
	^self famix importedEntities flatCollect: [ :m |
		m functions select: [ :f | f name = aString ]
	]
]

{ #category : #resolving }
IREntityMODULE >> resolveLocalFunction: aString [
	^ self famix functions select: [ :fct | fct name = aString ]

]

{ #category : #resolving }
IREntityMODULE >> resolveLocalName: aString [
	^(self resolveLocalVar: aString) , (self resolveLocalFunction: aString)

]

{ #category : #resolving }
IREntityMODULE >> resolveLocalReference: aString [
	^(self famix functions select: [ :famixFct | famixFct name = aString ]) ,
		(self famix globalVariables select: [ :famixVar | famixVar name = aString ])

]

{ #category : #resolving }
IREntityMODULE >> resolveLocalVariable: aString [

	^ self famix globalVariables select: [ :famixVar | famixVar name = aString ]

]

{ #category : #resolving }
IREntityMODULE >> resolveNonLocalReference: aString [
	^self famix importedEntities flatCollect: [ :famixModule |
		(famixModule functions select: [ :famixFunction | famixFunction name = aString ]) ,
		(famixModule globalVariables select: [ :famixVar | famixVar name = aString ])
	]
]

{ #category : #converting }
IREntityMODULE >> setFamixParent [
	famix compilationUnit: (parentIR famix)
]
