"
A test class for testing the behavior of IREntity
"
Class {
	#name : #IRReader1Test,
	#superclass : #IRAbstractTest,
	#instVars : [
		'mdl',
		'fct'
	],
	#category : #'Fortran_OFP-Tests'
}

{ #category : #tests }
IRReader1Test >> testSetFamixParentFUNCTION [
	self makeIR: IREntityMODULE key: 'keyMdl'.
	self importIR: '{"key":"keyFct","parent":"keyMdl","kind":"FUNCTION","data":{"name":"fct"}}'.
	
	(irModel entityAtKey: 'keyFct')
		setParentIfNil: irModel ;
		toFamix ;
		setFamixParent.	

	self assert: (irModel entityAtKey: 'keyFct') notNil.
	self
		assert: (irModel entityAtKey: 'keyFct') famix functionOwner
		equals: (irModel entityAtKey: 'keyMdl') famix
]

{ #category : #tests }
IRReader1Test >> testToFamixFUNCTION [
	self importIR: '{"key":"keyFct","parent":"keyMdl","kind":"FUNCTION","data":{"name":"fct"}}'.

	self assert: (irModel entityAtKey: 'keyFct') notNil.
	self assert: (irModel entityAtKey: 'keyFct') toFamix class equals: FamixFortranFunction.
	self assert: (irModel entityAtKey: 'keyFct') toFamix name equals: 'fct'.
]

{ #category : #tests }
IRReader1Test >> testToFamixMODULE [
	self importIR: '{"key":"keyMdl","kind":"MODULE","data":{"name":"mdl"}}'.
	irModel
		toFamix ;
		setFamixParents.

	self assert: (irModel entityAtKey: 'keyMdl') notNil.
	self assert: (irModel entityAtKey: 'keyMdl') toFamix class equals: FamixFortranModule.
	self assert: (irModel entityAtKey: 'keyMdl') toFamix name equals: 'mdl'.
]

{ #category : #tests }
IRReader1Test >> testToFamixVARIABLE [
	self importIR: '{"key":"keyMdl","kind":"MODULE","data":{"name":"mdl"}}'.
	self importIR: '{"key":"keyFct","kind":"FUNCTION","data":{"name":"fct"}}'.
	self importIR: '{"key":"keyVar1","parent":"keyMdl","kind":"VARIABLE","data":{"name":"var1"}}'.
	self importIR: '{"key":"keyVar2","parent":"keyFct","kind":"VARIABLE","data":{"name":"var2"}}'.
	self importIR: '{"key":"keyVar3",                  "kind":"VARIABLE","data":{"name":"var3"}}'.
	irModel setParents.

	self assert: (irModel entityAtKey: 'keyVar1') notNil.
	self assert: (irModel entityAtKey: 'keyVar1') toFamix class equals: FamixFortranGlobalVariable.
	self assert: (irModel entityAtKey: 'keyVar1') toFamix name equals: 'var1'.

	self assert: (irModel entityAtKey: 'keyVar2') notNil.
	self assert: (irModel entityAtKey: 'keyVar2') toFamix class equals: FamixFortranLocalVariable.
	self assert: (irModel entityAtKey: 'keyVar2') toFamix name equals: 'var2'.

	self assert: (irModel entityAtKey: 'keyVar3') notNil.
	self assert: (irModel entityAtKey: 'keyVar3') toFamix class equals: FamixFortranLocalVariable.
	self assert: (irModel entityAtKey: 'keyVar3') toFamix name equals: 'var3'.
]
