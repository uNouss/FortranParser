Class {
	#name : #FortranAbstractTest,
	#superclass : #TestCase,
	#instVars : [
		'irModel'
	],
	#category : #'FortranParser-Tests'
}

{ #category : #'private utilities' }
FortranAbstractTest >> importIR: entityDescription [
	irModel readFromStream: (ReadStream on: entityDescription).

]

{ #category : #'private utilities' }
FortranAbstractTest >> makeIR: irEntityClass key: aString [
	 | ir |
	ir := irEntityClass new.
	irModel at: aString put: ir.
	^ir
]

{ #category : #initialization }
FortranAbstractTest >> setUp [
	irModel := IRReader new
]
