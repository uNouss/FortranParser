Class {
	#name : #IREntityNamed,
	#superclass : #IREntity,
	#category : #'FortranParser-IRModel'
}

{ #category : #testing }
IREntityNamed >> isNamed: aString [
	^self name = aString
]

{ #category : #accessing }
IREntityNamed >> name [
	^ data at: 'name' ifAbsent: [nil]
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
IREntityNamed >> resolveLocalVariable: aString [
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
IREntityNamed >> resolveNonLocalVariable: aString [
	^parentIR resolveVariable: aString
]

{ #category : #resolving }
IREntityNamed >> resolveReference: aString [
	^(self resolveLocalReference: aString)
		ifEmpty: [ self resolveNonLocalReference: aString ]
]

{ #category : #resolving }
IREntityNamed >> resolveVariable: aString [
	^(self resolveLocalVariable: aString)
		ifEmpty: [ self resolveNonLocalVariable: aString ]
]

{ #category : #converting }
IREntityNamed >> setFamixParent [
	self subclassResponsibility 
]

{ #category : #converting }
IREntityNamed >> setSourceAnchorToFamix [
	(famix notNil and: [ self sourceAnchorFile notNil ])
		ifTrue: [
			famix sourceAnchor:
				(FamixFortranIndexedFileAnchor new
					fileName: self sourceAnchorFile ;
					startPos: self sourceAnchorStart asInteger ;
					endPos:   self sourceAnchorEnd   asInteger ;
					yourself)
	]
]

{ #category : #converting }
IREntityNamed >> toFamix [
	super toFamix.
	famix ifNil: [ ^ self ].
	famix name: (data at: 'name').
	self setSourceAnchorToFamix.
	^famix
]
