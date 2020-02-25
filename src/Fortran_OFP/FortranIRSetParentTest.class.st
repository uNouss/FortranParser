"
A test class for testing the behavior of IREntity
"
Class {
	#name : #FortranIRSetParentTest,
	#superclass : #FortranAbstractTest,
	#instVars : [
		'mdl',
		'fct'
	],
	#category : #'Fortran_OFP-Tests'
}

{ #category : #tests }
FortranIRSetParentTest >> testSetParentFUNCTION [
	| parent child |
	parent := self makeIR: IREntityMODULE key: 'keyMdl'.
	child := self makeIR: IREntityFUNCTION key: 'keyFct'.
	child parentKey: 'keyMdl'.

	child setParentIfNil: irModel.

	self assert: child parentIR equals: parent

]

{ #category : #tests }
FortranIRSetParentTest >> testSetParentNAMEREF [
	| parent child |
	parent := self makeIR: IREntityFUNCTION key: 'keyFct'.
	child := self makeIR: IREntityNAMEREF key: 'keyRef'.
	child parentKey: 'keyFct'.

	child setParentIfNil: irModel.

	self assert: child parentIR equals: parent

]

{ #category : #tests }
FortranIRSetParentTest >> testSetParentVARIABLE [
	| parent child |
	parent := self makeIR: IREntityFUNCTION key: 'keyFct'.
	child := self makeIR: IREntityVARIABLE key: 'keyVar'.
	child parentKey: 'keyFct'.

	child setParentIfNil: irModel.

	self assert: child parentIR equals: parent

]
