Class {
	#name : #IREntityVARIABLE,
	#superclass : #IREntityNamed,
	#category : #'Fortran_OFP-IRModel'
}

{ #category : #accessing }
IREntityVARIABLE >> famixClass [
	^(parentIR isKind: 'MODULE')
		ifTrue: [ FamixFortranGlobalVariable ]
		ifFalse: [ FamixFortranLocalVariable ]
]

{ #category : #resolving }
IREntityVARIABLE >> resolveLocalReference: aString [
	^#()
]

{ #category : #resolving }
IREntityVARIABLE >> resolveNonLocalReference: aString [
	^#()
]

{ #category : #resolving }
IREntityVARIABLE >> resolveReference: aString [
	^#()
]

{ #category : #converting }
IREntityVARIABLE >> setFamixParent [
	| parent |
	parent := parentIR famix.
	(parent isBehaviouralEntity)
	ifFalse: [ famix parentScope: parent ]
	ifTrue: [ famix parentBehaviouralEntity: parent ]
]
