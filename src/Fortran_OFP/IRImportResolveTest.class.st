"
A test class for testing the behavior of IntermediaryRepresentations classes.
Offers some simple common functionalities
"
Class {
	#name : #IRImportResolveTest,
	#superclass : #IRAbstractTest,
	#category : #'Fortran_OFP-Tests'
}

{ #category : #initialization }
IRImportResolveTest >> setUp [
	super setUp.
	self importIR: '{"key":"keyMdl1","kind":"MODULE","data":{"name":"mdl1"}}'.
	self importIR: '{"key":"keyMdl2","kind":"MODULE","data":{"name":"mdl2"}}'.
	self importIR: '{"key":"keyMdl3","kind":"MODULE","data":{"name":"mdl3"}}'.

	self importIR: '{"key":"keyFct1","parent":"keyMdl1","kind":"FUNCTION","data":{"name":"fct1"}}'.
	self importIR: '{"key":"keyFct2","parent":"keyMdl2","kind":"FUNCTION","data":{"name":"fct2"}}'.
	self importIR: '{"key":"keyFct3","parent":"keyMdl3","kind":"FUNCTION","data":{"name":"fct3"}}'.

]

{ #category : #tests }
IRImportResolveTest >> testResolveFunctionInModule [
	| fct fmx ir |
	fmx := FamixFortranModule new.
	ir := 	self makeIR: IREntityMODULE key: 'keyMdl'.
	ir famix: fmx.
	
	fct := FamixFortranFunction new
				name: 'fct' ;
				functionOwner: fmx ;
				yourself.

	self assert: (ir resolveFunction: 'fct') size equals: 1.
	self assert: (ir resolveFunction: 'fct') anyOne equals: fct.
]

{ #category : #tests }
IRImportResolveTest >> testResolveFunctionNotFound [
	self assert: (irModel resolveFunction: 'fctUnknown') size equals: 0
]
