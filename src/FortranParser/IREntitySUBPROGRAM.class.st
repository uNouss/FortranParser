Class {
	#name : #IREntitySUBPROGRAM,
	#superclass : #IREntityFUNCTION,
	#category : #'FortranParser-IRModel'
}

{ #category : #testing }
IREntitySUBPROGRAM >> isKind: aString [
	^ aString = 'SUBPROGRAM'
]
