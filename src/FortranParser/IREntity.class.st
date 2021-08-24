Class {
	#name : #IREntity,
	#superclass : #Object,
	#instVars : [
		'famix',
		'key',
		'kind',
		'data',
		'parentKey',
		'parentIR'
	],
	#category : #'FortranParser-IRModel'
}

{ #category : #'instance creation' }
IREntity class >> from: json [
	^(Smalltalk classNamed: (self name asString , (json at: 'kind') ))
		new
			fromJSON: json ;
			yourself
]

{ #category : #accessing }
IREntity >> data [
	^data
]

{ #category : #'accessing - private tests' }
IREntity >> data: aDictionnary [
	CurrentExecutionEnvironment value isTest
		ifFalse: [ self shouldNotImplement  ].
	data := aDictionnary 
]

{ #category : #accessing }
IREntity >> famix [
	^ famix
]

{ #category : #accessing }
IREntity >> famix: aFamixEntity [
	famix := aFamixEntity 
]

{ #category : #accessing }
IREntity >> famixClass [
	self subclassResponsibility 
]

{ #category : #initialization }
IREntity >> fromJSON: json [
	key := json at: 'key'.
	kind := json at: 'kind'.
	data := json at: 'data'.
	parentKey := json at: 'parent' ifAbsent: nil.

]

{ #category : #testing }
IREntity >> isAnonymous [
	^ key beginsWith: '_anonymous'
]

{ #category : #testing }
IREntity >> isKind: aString [
	^self kind = aString
]

{ #category : #testing }
IREntity >> isNamed: aString [
	self subclassResponsibility 
]

{ #category : #'accessing - private tests' }
IREntity >> key: aKey [
	CurrentExecutionEnvironment value isTest
		ifFalse: [ self shouldNotImplement  ].
	key := aKey 
]

{ #category : #accessing }
IREntity >> kind [
	^ kind
]

{ #category : #'accessing - private tests' }
IREntity >> kind: aString [
	CurrentExecutionEnvironment value isTest
		ifFalse: [ self shouldNotImplement  ].
	kind := aString
]

{ #category : #accessing }
IREntity >> mooseModel [
	^parentIR mooseModel
]

{ #category : #accessing }
IREntity >> parentIR [
	^parentIR 
]

{ #category : #'accessing - private tests' }
IREntity >> parentIR: ir [
	CurrentExecutionEnvironment value isTest
		ifFalse: [ self shouldNotImplement  ].
	parentIR := ir
]

{ #category : #accessing }
IREntity >> parentKey [
	^parentKey
]

{ #category : #'accessing - private tests' }
IREntity >> parentKey: aKey [
	CurrentExecutionEnvironment value isTest
		ifFalse: [ self shouldNotImplement  ].
	parentKey := aKey 
]

{ #category : #converting }
IREntity >> setParentIfNil: irReader [
	parentIR := parentKey
							ifNil: [  irReader ]
							ifNotNil: [
								irReader entityAtKey: parentKey
							]

]

{ #category : #accessing }
IREntity >> sourceAnchorEnd [
	^ data at: 'anchorend' ifAbsent: [nil]
]

{ #category : #accessing }
IREntity >> sourceAnchorFile [
	^ data at: 'anchorfile' ifAbsent: [nil]
]

{ #category : #accessing }
IREntity >> sourceAnchorStart [
	^ data at: 'anchorstart' ifAbsent: [nil]
]

{ #category : #converting }
IREntity >> toFamix [
	^famix ifNil: [ famix := self famixClass new].

]
