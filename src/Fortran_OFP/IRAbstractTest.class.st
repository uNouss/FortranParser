Class {
	#name : #IRAbstractTest,
	#superclass : #TestCase,
	#instVars : [
		'irModel'
	],
	#category : 'Fortran_OFP-Tests'
}

{ #category : #'private utilities' }
IRAbstractTest >> makeEntity: assocList key: aString [
	| entity data |
	entity := IREntityOLD new
						key: aString ;
						irModel: irModel ;
						yourself.
	assocList do: [ :assoc |
		[entity perform: (assoc key , ':') asSymbol with: (assoc value)]
		on: MessageNotUnderstood
		do: [  "ignore" ]
	].
	data := Dictionary new.
	assocList do: [ :assoc | data add: assoc ].
	entity data: data.
	irModel entities at: aString put: entity.
	^ entity

]

{ #category : #'private utilities' }
IRAbstractTest >> makeFamix: aFamixClass entity: assocList key: aString [
	| entity fmx |
	entity := self makeEntity: assocList key: aString.
	fmx := aFamixClass new.
	entity famix: fmx.
	^ fmx

]

{ #category : #initialization }
IRAbstractTest >> setUp [
	irModel := IRReader new
]
