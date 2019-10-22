"
A test class for testing the behavior of IntermediaryRepresentations classes.
Offers some simple common functionalities
"
Class {
	#name : #IRResolverTest,
	#superclass : #IRAbstractTest,
	#category : #'Fortran_OFP-Tests'
}

{ #category : #initialization }
IRResolverTest >> setUp [
	super setUp.
	self importIR: '{"key":"keyMdl1","kind":"MODULE","data":{"name":"mdl1"}}'.
	self importIR: '{"key":"keyMdl2","kind":"MODULE","data":{"name":"mdl2"}}'.
	self importIR: '{"key":"keyMdl3","kind":"MODULE","data":{"name":"mdl3"}}'.

	self importIR: '{"key":"keyFct1","parent":"keyMdl1","kind":"FUNCTION","data":{"name":"fct1"}}'.
	self importIR: '{"key":"keyFct2","parent":"keyMdl2","kind":"FUNCTION","data":{"name":"fct2"}}'.
	self importIR: '{"key":"keyFct3","parent":"keyMdl3","kind":"FUNCTION","data":{"name":"fct3"}}'.

]

{ #category : #tests }
IRResolverTest >> testResolveNotFound [
	self assert: (irModel resolveFunction: 'fctUnknown') size equals: 0
]

{ #category : #tests }
IRResolverTest >> testResolveOtherModule [
	self assert: (irModel resolveFunction: 'fct2') size equals: 1.
	self assert: (irModel resolveFunction: 'fct2') anyOne name equals: 'fct2'.
]

{ #category : #tests }
IRResolverTest >> testResolveSameModule [
	self assert: (irModel resolveBehavioural: 'fct1' in: mdl1) size equals: 1.
	self assert: (irModel resolveBehavioural: 'fct1' in: mdl1) anyOne equals: fct1.

]

{ #category : #tests }
IRResolverTest >> testResolveSeveralFound [
	self assert: (irModel resolveBehavioural: 'fct1' in: mdl2) size equals: 2
]
