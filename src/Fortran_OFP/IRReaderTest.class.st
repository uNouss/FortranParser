"
A test class for testing the behavior of IRReader
"
Class {
	#name : #IRReaderTest,
	#superclass : #IRAbstractTest,
	#category : 'Fortran_OFP-Tests'
}

{ #category : #tests }
IRReaderTest >> testReadFUNCTION [
	irModel readFromStream: (ReadStream on: '{"parent":"entity1","kind":"FUNCTION","data":{"name":"entity2"}}').
	
	self assert: irModel entities size equals: 1.
	self assert: irModel entities values anyOne kind equals: 'FUNCTION'.
	self assert: irModel entities values anyOne name equals: 'entity2'.

]

{ #category : #tests }
IRReaderTest >> testReadNAMEREF [
	irModel readFromStream: (ReadStream on: '{"parent":"entity1","kind":"NAMEREF","data":{"name":"entity2"}}').
	
	self assert: irModel entities size equals: 1.
	self assert: irModel entities values anyOne kind equals: 'NAMEREF'.
	self assert: irModel entities values anyOne name equals: 'entity2'.

]

{ #category : #tests }
IRReaderTest >> testReadVARIABLE [
	irModel readFromStream: (ReadStream on: '{"key":"key1","parent":"entity1","kind":"VARIABLE","data":{"anchorstart":123,"isstub":false,"name":"entity2","anchorfile":"aFile.f90","declaredParam":false,"anchorend":456}}').
	
	self assert: irModel entities size equals: 1.
	self assert: irModel entities values anyOne kind equals: 'VARIABLE'.
	self assert: irModel entities values anyOne name equals: 'entity2'.

]
