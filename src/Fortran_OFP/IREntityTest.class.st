"
A test class for testing the behavior of IREntity
"
Class {
	#name : #IREntityTest,
	#superclass : #IRAbstractTest,
	#instVars : [
		'mdl',
		'fct'
	],
	#category : #'Fortran_OFP-Tests'
}

{ #category : #initialization }
IREntityTest >> setUp [
	super setUp.
	self makeEntity: '{"key":"keyMdl","kind":"MODULE","data":{"name":"mdl"}}'.
	mdl := (irModel entityAtKey: 'keyMdl')
				toFamix ;
				yourself.

	self makeEntity: '{"key":"keyFct","parent":"keyMdl","kind":"FUNCTION","data":{"name":"fct"}}'.
	fct := (irModel entityAtKey: 'keyFct')
				toFamix ;
				yourself.

]

{ #category : #'tests-converting' }
IREntityTest >> testToFamixFUNCTION [

	self assert: (irModel entityAtKey: 'keyFct') notNil.
	self assert: (irModel entityAtKey: 'keyFct') toFamix class equals: FamixFortranFunction.
	self assert: (irModel entityAtKey: 'keyFct') toFamix name equals: 'fct'.
]

{ #category : #'tests-converting' }
IREntityTest >> testToFamixMODULE [

	self assert: (irModel entityAtKey: 'keyMdl') notNil.
	self assert: (irModel entityAtKey: 'keyMdl') toFamix class equals: FamixFortranModule.
	self assert: (irModel entityAtKey: 'keyMdl') toFamix name equals: 'mdl'.
]

{ #category : #'tests-converting' }
IREntityTest >> testToFamixVARIABLE [
	self makeEntity: '{"key":"keyVar1","parent":"keyMdl","kind":"VARIABLE","data":{"name":"var1"}}'.
	self makeEntity: '{"key":"keyVar2","parent":"keyFct","kind":"VARIABLE","data":{"name":"var2"}}'.
	self makeEntity: '{"key":"keyVar3",                  "kind":"VARIABLE","data":{"name":"var3"}}'.
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
