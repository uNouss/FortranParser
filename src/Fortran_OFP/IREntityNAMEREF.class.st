Class {
	#name : #IREntityNAMEREF,
	#superclass : #IREntityAssociation,
	#category : 'Fortran_OFP'
}

{ #category : #converting }
IREntityNAMEREF >> createStub: stubClass named: aString [
	"by defualt creates a localVariable"
	^(super createStub: stubClass named: aString)
		parentBehaviouralEntity: (parentIR famix) ;
		yourself
]

{ #category : #accessing }
IREntityNAMEREF >> famixTargetClass [
	"by default will assume a localVariable"
	^FAMIXLocalVariable
]

{ #category : #resolving }
IREntityNAMEREF >> resolveTarget: aString [
	^parentIR resolveReference: aString
]

{ #category : #converting }
IREntityNAMEREF >> toFamixSource: famixSource soleTarget: famixTarget [
	^famixTarget isBehaviouralEntity
		ifTrue: [ FAMIXInvocation new
						signature:  (data at: 'name') ;
						sender: famixSource ;
						candidates: {famixTarget} ;
						mooseModel: self mooseModel ;
						yourself ]
		ifFalse: [ FAMIXAccess new
						accessor: famixSource ;
						variable: famixTarget ;
						mooseModel: self mooseModel ;
						yourself ]
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
	(famixTargets allSatisfy: #isBehaviouralEntity) ifTrue: [
		^ FAMIXInvocation new
				signature:  (data at: 'name') ;
				sender: famixSource ;
				candidates: famixTargets ;
				mooseModel: self mooseModel ;
				yourself ].

	self errorTooManyResolvedFor: self targetName
]
