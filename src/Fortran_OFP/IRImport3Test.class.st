Class {
	#name : #IRImport3Test,
	#superclass : #IRAbstractTest,
	#instVars : [
		'mdl',
		'fct'
	],
	#category : #'Fortran_OFP-Tests'
}

{ #category : #tests }
IRImport3Test >> testSetFamixParentFUNCTION [
	| ir fmxParent fmxChild |
	ir := self makeIR: IREntityFUNCTION key: 'keyFct'.
	fmxChild := FamixFortranFunction new.
	ir famix: fmxChild.

	ir parentIR: (self makeIR: IREntityMODULE key: 'keyMdl').
	fmxParent := FamixFortranModule new.
	ir parentIR famix: fmxParent.

	ir setFamixParent.	

	self assert: fmxChild functionOwner equals: fmxParent
]

{ #category : #tests }
IRImport3Test >> testSetFamixParentGLOBALVAR [
	| ir fmxParent fmxChild |
	ir := self makeIR: IREntityVARIABLE key: 'keyVar'.
	fmxChild := FamixFortranGlobalVariable new.
	ir famix: fmxChild.

	ir parentIR: (self makeIR: IREntityMODULE key: 'keyMdl').
	fmxParent := FamixFortranModule new.
	ir parentIR famix: fmxParent.

	ir setFamixParent.	

	self assert: fmxChild parentScope equals: fmxParent
]

{ #category : #tests }
IRImport3Test >> testSetFamixParentLOCALVAR [
	| ir fmxParent fmxChild |
	ir := self makeIR: IREntityVARIABLE key: 'keyVar'.
	fmxChild := FamixFortranLocalVariable new.
	ir famix: fmxChild.

	ir parentIR: (self makeIR: IREntityFUNCTION key: 'keyFct').
	fmxParent := FamixFortranFunction new.
	ir parentIR famix: fmxParent.

	ir setFamixParent.	

	self assert: fmxChild parentBehaviouralEntity equals: fmxParent
]
