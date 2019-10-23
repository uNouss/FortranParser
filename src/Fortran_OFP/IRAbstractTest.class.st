Class {
	#name : #IRAbstractTest,
	#superclass : #TestCase,
	#instVars : [
		'irModel'
	],
	#category : #'Fortran_OFP-Tests'
}

{ #category : #'private utilities' }
IRAbstractTest >> importIR: entityDescription [
	irModel readFromStream: (ReadStream on: entityDescription).

]

{ #category : #'private utilities' }
IRAbstractTest >> makeIR: irEntityClass key: aString [
	 | ir |
	ir := irEntityClass new.
	irModel at: aString put: ir.
	^ir
]

{ #category : #initialization }
IRAbstractTest >> setUp [
	irModel := IRReader new
]
