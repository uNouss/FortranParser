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
	mdl := (self makeFamix: FAMIXModule entity: #() key: 'keyMdl')
					name: 'mdl' ;
					isStub: false ;
					yourself.

	fct := (self makeFamix: FAMIXFunction entity: #() key: 'keyFct')
					name: 'fct' ;
					isStub: false ;
					yourself.

]

{ #category : #'tests-converting' }
IREntityTest >> testToFamixFUNCTION [
	|entity |
	entity := self makeEntity: {'name' -> 'entity2' . 'kind' -> 'FUNCTION' . 'parent' -> 'keyMdl'} key: 'key1'.

	self assert: entity toFamix class equals: FamixFortranFunction.
	self assert: entity toFamix fortranOwner equals: mdl.
]

{ #category : #'tests-converting' }
IREntityTest >> testToFamixMODULE [
	|entity|
	entity := self makeEntity: {'name' -> 'entity2' . 'kind' -> 'MODULE' } key: 'keyMdl2'.

	self assert: entity toFamix class equals: FamixFortranModule.
	self assert: entity toFamix parentScope equals: nil.
]

{ #category : #'tests-converting' }
IREntityTest >> testToFamixVARIABLE [
	| entity |
	entity := self makeEntity: {'name' -> 'var1' . 'kind' -> 'VARIABLE' . 'parent' -> 'keyMdl'} key: 'keyVar1'.
	self assert: entity toFamix class equals: FamixFortranGlobalVariable.
	self assert: entity toFamix belongsTo equals: mdl.

	entity := self makeEntity: {'name' -> 'var2' . 'kind' -> 'VARIABLE'} key: 'keyVar2'.
	self assert: entity toFamix class equals: FamixFortranGlobalVariable.
	self assert: entity toFamix belongsTo equals: nil.

	entity := self makeEntity: {'name' -> 'var3' . 'kind' -> 'VARIABLE' . 'parent' -> 'keyFct'} key: 'keyVar3'.
	self assert: entity toFamix class equals: FamixFortranLocalVariable.
	self assert: entity toFamix parentBehaviouralEntity equals: fct.
]
