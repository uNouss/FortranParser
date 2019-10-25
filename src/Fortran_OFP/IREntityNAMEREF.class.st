Class {
	#name : #IREntityNAMEREF,
	#superclass : #IREntityAssociation,
	#category : #'Fortran_OFP-IRModel'
}

{ #category : #converting }
IREntityNAMEREF >> createAccessFrom: famixSource to: famixTarget [
	^ FamixFortranAccess new
		accessor: famixSource;
		variable: famixTarget;
		mooseModel: self mooseModel;
		yourself
]

{ #category : #converting }
IREntityNAMEREF >> createInvocationFrom: famixSource to: famixTargets [
	^ FamixFortranInvocation new
		signature: (data at: 'name') ;
		sender: famixSource ;
		candidates: famixTargets ;
		mooseModel: self mooseModel ;
		yourself
]

{ #category : #converting }
IREntityNAMEREF >> createStub: stubClass named: aString [
	"by default creates a localVariable"
	^(super createStub: stubClass named: aString)
		parentBehaviouralEntity: (parentIR famix) ;
		yourself
]

{ #category : #accessing }
IREntityNAMEREF >> famixTargetClass [
	"by default will assume a localVariable"
	^FamixFortranLocalVariable
]

{ #category : #testing }
IREntityNAMEREF >> isKind: aString [
	^ aString = 'NAMEREF'
]

{ #category : #accessing }
IREntityNAMEREF >> name [
	^ data at: 'name'
]

{ #category : #resolving }
IREntityNAMEREF >> resolveTarget: aString [
	^parentIR resolveReference: aString
]

{ #category : #converting }
IREntityNAMEREF >> toFamixSource: famixSource soleTarget: famixTarget [
	^ famixTarget isBehaviouralEntity
		ifTrue:  [ self createInvocationFrom: famixSource to: {famixTarget} ]
		ifFalse: [ self createAccessFrom: famixSource to: famixTarget ]
]

{ #category : #converting }
IREntityNAMEREF >> toFamixSource: famixSource targets: famixTargets [
	"If there is only one target, #toFamixSource:soleTarget: will take care of it
	 It there are various and all are behavioural, can create an invocation
	 If there are no targets, create stub
	 Otherwise, raises an error"
	
	famixTargets ifEmpty: [
		^self toFamixSource: famixSource
				soleTarget: (self createStub: self famixTargetClass named: self targetName) ].
	famixTargets size = 1 ifTrue: [
		^ self toFamixSource: famixSource soleTarget: famixTargets anyOne ].
	(famixTargets allSatisfy: #isBehaviouralEntity)
		ifTrue: [ ^ self createInvocationFrom: famixSource to: famixTargets ].

	self errorTooManyResolvedFor: self targetName
]
