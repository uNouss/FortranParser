Class {
	#name : #IREntityNamed,
	#superclass : #IREntity,
	#category : #'Fortran_OFP-IRModel'
}

{ #category : #testing }
IREntityNamed >> isNamed: aString [
	^self name = aString
]

{ #category : #accessing }
IREntityNamed >> name [
	^ data at: 'name'
]

{ #category : #'accessing - private tests' }
IREntityNamed >> name: aString [
	CurrentExecutionEnvironment value isTest
		ifFalse: [ self shouldNotImplement  ].

	data ifNil: [ data := SmallDictionary new ].
	data at: 'name' put: aString
]

{ #category : #printing }
IREntityNamed >> printOn: aStream [
	super printOn: aStream.
	aStream
		nextPut: $( ;
		nextPutAll: (self name ifNil: ['']) ;
		nextPut: $).

]

{ #category : #resolving }
IREntityNamed >> resolveLocalReference: aString [
	self subclassResponsibility 
]

{ #category : #resolving }
IREntityNamed >> resolveModule: aString [
	^parentIR resolveModule: aString
]

{ #category : #resolving }
IREntityNamed >> resolveNonLocalReference: aString [
	^parentIR resolveReference: aString
]

{ #category : #resolving }
IREntityNamed >> resolveReference: aString [
	^(self resolveLocalReference: aString)
		ifEmpty: [ self resolveNonLocalReference: aString ]
]

{ #category : #converting }
IREntityNamed >> setFamixParent [
	self subclassResponsibility 
]

{ #category : #converting }
IREntityNamed >> toFamix [
	^super toFamix
		name: (data at: 'name') ;
		yourself.
]
