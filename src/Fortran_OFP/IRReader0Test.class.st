"
A test class for testing the behavior of IRReader
"
Class {
	#name : #IRReader0Test,
	#superclass : #IRAbstractTest,
	#category : #'Fortran_OFP-Tests'
}

{ #category : #tests }
IRReader0Test >> testReadFUNCTION [
	self importIR: '{"parent":"whatever","kind":"FUNCTION","data":{"name":"entity2"}}'.
	
	self assert: irModel entities size equals: 1.
	self assert: irModel entities values anyOne kind equals: 'FUNCTION'.
	self assert: irModel entities values anyOne name equals: 'entity2'.

]

{ #category : #tests }
IRReader0Test >> testReadNAMEREF [
	self importIR: '{"parent":"whatever","kind":"NAMEREF","data":{"name":"entity2"}}'.
	
	self assert: irModel entities size equals: 1.
	self assert: irModel entities values anyOne kind equals: 'NAMEREF'.
	self assert: irModel entities values anyOne name equals: 'entity2'.

]

{ #category : #tests }
IRReader0Test >> testReadVARIABLE [
	self importIR: '{"key":"key1","parent":"whatever","kind":"VARIABLE","data":{"anchorstart":123,"isstub":false,"name":"entity2","anchorfile":"aFile.f90","declaredParam":false,"anchorend":456}}'.
	
	self assert: irModel entities size equals: 1.
	self assert: irModel entities values anyOne kind equals: 'VARIABLE'.
	self assert: irModel entities values anyOne name equals: 'entity2'.

]

{ #category : #tests }
IRReader0Test >> testSetParentFUNCTION [
	| entity |
	entity := self mockIR: IREntityMODULE key: 'keyMdl'.
	self importIR: '{"parent":"keyMdl","key":"keyFct","kind":"FUNCTION","data":{"name":"fct"}}'.
	irModel setParents.

	self assert: (irModel entityAtKey: 'keyFct') notNil.
	self assert: (irModel entityAtKey: 'keyFct') parentIR equals: entity

]

{ #category : #tests }
IRReader0Test >> testSetParentNAMEREF [
	| entity |
	entity := self mockIR: IREntityFUNCTION key: 'keyFct'.
	self importIR: '{"key":"keyRef","parent":"keyFct","kind":"NAMEREF","data":{"name":"entity2"}}'.
	irModel setParents.

	self assert: (irModel entityAtKey: 'keyRef') notNil.
	self assert: (irModel entityAtKey: 'keyRef') parentIR equals: entity

]

{ #category : #tests }
IRReader0Test >> testSetParentVARIABLE [
	| entity |
	entity := self mockIR: IREntityFUNCTION key: 'keyFct'.
	self importIR: '{"key":"keyVar","parent":"keyFct","kind":"VARIABLE","data":{"name":"entity2"}}'.
	irModel setParents.

	self assert: (irModel entityAtKey: 'keyVar') notNil.
	self assert: (irModel entityAtKey: 'keyVar') parentIR equals: entity

]
