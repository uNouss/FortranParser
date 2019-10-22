Class {
	#name : #IREntityMODULE,
	#superclass : #IREntityNamed,
	#category : #'Fortran_OFP-IRModel'
}

{ #category : #resolving }
IREntityMODULE class >> resolveLocalName: aString forFamixModule: module [
	"dirty trick to avoid implementing resolve methods in Famix classes"
	^(module functions select: [ :famixFunction | famixFunction name = aString ]) ,
		(module globalVariables select: [ :famixVar | famixVar name = aString ])

]

{ #category : #accessing }
IREntityMODULE >> famixClass [
	^FamixFortranModule
]

{ #category : #resolving }
IREntityMODULE >> resolveFunction: aString [
	^(self famix functions
						select: [ :f | f name = aString ])
		ifEmpty: [ self resolveImportedFunction: aString ]

]

{ #category : #resolving }
IREntityMODULE >> resolveImportedFunction: aString [
	^self famix usedModules flatCollect: [ :m |
		m functions select: [ :f | f name = aString ]
	]
]

{ #category : #resolving }
IREntityMODULE >> resolveLocalReference: aString [
	^IREntityMODULE resolveLocalName: aString forFamixModule: self famix
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
