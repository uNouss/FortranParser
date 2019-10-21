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
	#category : #'Fortran_OFP-IRModel'
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

{ #category : #acccessing }
IREntity >> famix [
	^ famix
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
	^ key beginsWith: 'anonymous'
]

{ #category : #testing }
IREntity >> isKind: aString [
	^self kind = aString
]

{ #category : #testing }
IREntity >> isNamed: aString [
	self subclassResponsibility 
]

{ #category : #accessing }
IREntity >> kind [
	^ kind
]

{ #category : #accessing }
IREntity >> mooseModel [
	^parentIR mooseModel
]

{ #category : #accessing }
IREntity >> parentIR [
	^parentIR 
]

{ #category : #accessing }
IREntity >> parentKey [
	^parentKey
]

{ #category : #converting }
IREntity >> setParentIfNil: irReader [
	parentIR := parentKey
							ifNil: [  irReader ]
							ifNotNil: [
								irReader entityAtKey: parentKey
							]

]

{ #category : #converting }
IREntity >> toFamix [
	^famix ifNil: [ famix := self famixClass new].

]
