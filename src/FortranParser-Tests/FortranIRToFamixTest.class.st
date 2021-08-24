Class {
	#name : #FortranIRToFamixTest,
	#superclass : #FortranAbstractTest,
	#instVars : [
		'mdl',
		'fct'
	],
	#category : #'FortranParser-Tests'
}

{ #category : #tests }
FortranIRToFamixTest >> testToFamixFUNCTION [
	| ir fmx |
	ir := self makeIR: IREntityFUNCTION key: 'keyFct'.
	ir name: 'fct'.

	fmx := ir toFamix.
	self assert: fmx class equals: FamixFortranFunction.
	self assert: fmx name equals: 'fct'.
]

{ #category : #tests }
FortranIRToFamixTest >> testToFamixMODULE [
	| ir fmx |
	ir := self makeIR: IREntityMODULE key: 'keyMdl'.
	ir name: 'mdl'.

	fmx := ir toFamix.

	self assert: fmx class equals: FamixFortranModule.
	self assert: fmx name equals: 'mdl'.

]

{ #category : #tests }
FortranIRToFamixTest >> testToFamixVARIABLE_localToFunction [
	| ir fmx |
	ir := self makeIR: IREntityVARIABLE key: 'keyVar'.
	ir name: 'var'.
	ir parentIR: (self makeIR: IREntityFUNCTION key: 'keyFct').

	fmx := ir toFamix.

	self assert: fmx class equals: FamixFortranLocalVariable.
	self assert: fmx name equals: 'var'.

]

{ #category : #tests }
FortranIRToFamixTest >> testToFamixVARIABLE_localToModule [
	| ir fmx |
	ir := self makeIR: IREntityVARIABLE key: 'keyVar'.
	ir name: 'var'.
	ir parentIR: (self makeIR: IREntityMODULE key: 'keyMdl').

	fmx := ir toFamix.

	self assert: fmx class equals: FamixFortranGlobalVariable.
	self assert: fmx name equals: 'var'.

]

{ #category : #tests }
FortranIRToFamixTest >> testToFamixVARIABLE_localToNothing [
	| ir fmx |
	ir := self makeIR: IREntityVARIABLE key: 'keyVar'.
	ir name: 'var'.
	ir parentIR: irModel.  "default parentIR when none is specified"

	fmx := ir toFamix.

	self assert: fmx class equals: FamixFortranLocalVariable.
	self assert: fmx name equals: 'var'.

]
