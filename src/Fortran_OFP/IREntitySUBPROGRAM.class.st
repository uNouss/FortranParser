Class {
	#name : #IREntitySUBPROGRAM,
	#superclass : #IREntityFUNCTION,
	#category : #'Fortran_OFP-IRModel'
}

{ #category : #testing }
IREntitySUBPROGRAM >> isKind: aString [
	^ aString = 'SUBPROGRAM'
]
