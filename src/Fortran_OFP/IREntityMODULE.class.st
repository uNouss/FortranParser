Class {
	#name : #IREntityMODULE,
	#superclass : #IREntityNamed,
	#category : #'Fortran_OFP-IRModel'
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
	^self famix usedModules flatCollect: [ :m |
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
	^IREntityMODULE resolveLocalName: aString
]

{ #category : #resolving }
IREntityMODULE >> resolveLocalVariable: aString [

	^ self famix globalVariables select: [ :famixVar | famixVar name = aString ]

]

{ #category : #resolving }
IREntityMODULE >> resolveNonLocalReference: aString [
	^self famix usedModules flatCollect: [ :famixModule |
		(famixModule functions select: [ :famixFunction | famixFunction name = aString ]) ,
		(famixModule globalVariables select: [ :famixVar | famixVar name = aString ])
	]
]

{ #category : #converting }
IREntityMODULE >> setFamixParent [
	self flag: 'parents of Module ???'
]
