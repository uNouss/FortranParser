Class {
	#name : #IRAbstractTest,
	#superclass : #TestCase,
	#instVars : [
		'irModel'
	],
	#category : #'Fortran_OFP-Tests'
}

{ #category : #'private utilities' }
IRAbstractTest >> associateFamix: aFamixClass toEntity: aKey [
	| fmx |
	fmx := aFamixClass new.
	(irModel entityAtKey: aKey) famix: fmx.
	^ fmx

]

{ #category : #'private utilities' }
IRAbstractTest >> makeEntity: entityDescription [
	irModel readFromStream: (ReadStream on: entityDescription).

]

{ #category : #initialization }
IRAbstractTest >> setUp [
	irModel := IRReader new
]
