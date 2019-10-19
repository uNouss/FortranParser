Class {
	#name : #IREntityPROGRAM,
	#superclass : #IREntityNamed,
	#category : 'Fortran_OFP'
}

{ #category : #accessing }
IREntityPROGRAM >> famixClass [
	^FAMIXProgram 
]

{ #category : #resolving }
IREntityPROGRAM >> resolveFunction: aString [ 
	^(famix functions
						select: [ :f | f name = aString ])
		ifEmpty: [ famix usedModules flatCollect: [ :m |
			m functions select: [ :f | f name = aString ]
		] ]

]

{ #category : #resolving }
IREntityPROGRAM >> resolveLocalReference: aString [
	"different than for modules becuse have LOCAL variables"
	^(self famix functions select: [ :famixFct | famixFct name = aString ]) ,
		(self famix localVariables select: [ :famixVar | famixVar name = aString ])

]

{ #category : #resolving }
IREntityPROGRAM >> resolveNonLocalReference: aString [
	^self famix usedModules flatCollect: [ :famixModule |
		(famixModule functions select: [ :famixFunction | famixFunction name = aString ]) ,
		(famixModule globalVariables select: [ :famixVar | famixVar name = aString ])
	]
]

{ #category : #converting }
IREntityPROGRAM >> setFamixParent [
	"famix compilationUnit: (parentEntity entityAt: parentKey) toFamix"
]
