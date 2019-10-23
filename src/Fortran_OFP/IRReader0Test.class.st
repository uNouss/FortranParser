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
