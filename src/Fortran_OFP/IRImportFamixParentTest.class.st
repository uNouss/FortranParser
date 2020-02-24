Class {
	#name : #IRImportFamixParentTest,
	#superclass : #IRAbstractTest,
	#instVars : [
		'mdl',
		'fct'
	],
	#category : #'Fortran_OFP-Tests'
}

{ #category : #tests }
IRImportFamixParentTest >> testSetFamixParentFUNCTION [
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
IRImportFamixParentTest >> testSetFamixParentGLOBALVAR [
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
IRImportFamixParentTest >> testSetFamixParentLOCALVAR [
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
