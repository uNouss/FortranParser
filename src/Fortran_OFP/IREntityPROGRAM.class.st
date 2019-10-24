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
