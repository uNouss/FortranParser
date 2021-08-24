Class {
	#name : #IREntityVARREF,
	#superclass : #IREntityNAMEREF,
	#category : #'FortranParser-IRModel'
}

{ #category : #testing }
IREntityVARREF >> isKind: aString [
	^ aString = 'VARREF'
]

{ #category : #resolving }
IREntityVARREF >> resolveTarget: aString [
	^parentIR resolveVariable: aString
]

{ #category : #accessing }
IREntityVARREF >> targetName [
	^data at: 'assigntLHS'
]
