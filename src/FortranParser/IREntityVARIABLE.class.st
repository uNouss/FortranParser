Class {
	#name : #IREntityVARIABLE,
	#superclass : #IREntityNamed,
	#category : #'FortranParser-IRModel'
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
IREntityVARIABLE >> resolveLocalVariable: aString [
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

{ #category : #resolving }
IREntityVARIABLE >> resolveVariable: aString [
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
