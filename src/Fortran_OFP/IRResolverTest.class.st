"
A test class for testing the behavior of IntermediaryRepresentations classes.
Offers some simple common functionalities
"
Class {
	#name : #IRResolverTest,
	#superclass : #IRAbstractTest,
	#instVars : [
		'mdl1',
		'mdl2',
		'fct1',
		'fct2',
		'fct3',
		'mdl3'
	],
	#category : 'Fortran_OFP-Tests'
}

{ #category : #initialization }
IRResolverTest >> setUp [
	super setUp.
	mdl1 := (self makeFamix: FAMIXModule entity: #() key: 'keyMdl1')
					name: 'mdl1' ;
					isStub: false ;
					yourself.
	mdl2 := (self makeFamix: FAMIXModule entity: #() key: 'keyMdl2')
					name: 'mdl2' ;
					isStub: false ;
					yourself.
	mdl3 := (self makeFamix: FAMIXModule entity: #() key: 'keyMdl3')
					name: 'mdl3' ;
					isStub: false ;
					yourself.

	fct1 := (self makeFamix: FAMIXFunction entity: #() key: 'keyFct1')
					name: 'fct1' ;
					isStub: false ;
					container: mdl1 ;
					yourself.
	fct2 := (self makeFamix: FAMIXFunction entity: #() key: 'keyFct2')
					name: 'fct2' ;
					isStub: false ;
					container: mdl2 ;
					yourself.
	fct3 := (self makeFamix: FAMIXFunction entity: #() key: 'keyFct3')
					name: 'fct1' ;
					isStub: false ;
					container: mdl3 ;
					yourself.

]

{ #category : #tests }
IRResolverTest >> testResolveNotFound [
	self assert: (irModel resolveBehavioural: 'fctUnknown' in: mdl1) size equals: 0
]

{ #category : #tests }
IRResolverTest >> testResolveOtherModule [
	self assert: (irModel resolveBehavioural: 'fct2' in: mdl1) size equals: 1.
	self assert: (irModel resolveBehavioural: 'fct2' in: mdl1) anyOne equals: fct2.
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
