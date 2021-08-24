"
I am responsible for reading a data file as exported by the OFP parser (https://github.com/NicolasAnquetil/VerveineF.git) and to create a dictionary of IREntities from it
[[[
	reader := IRReader readFromFile: 'output.ir'.
]]] 

I can also convert my IREntities into famix ones (thus populating a Famix Model) in an orderly fashion
[[[
	reader toFamix.
]]] 

"
Class {
	#name : #IRReader,
	#superclass : #IREntity,
	#instVars : [
		'counter',
		'entities'
	],
	#category : #'FortranParser-Import'
}

{ #category : #'instance creation' }
IRReader class >> readFromFile: filename [
	^self new
		readFromFile: filename ;
		yourself
]

{ #category : #reading }
IRReader >> addEntity: json [
	"Takes key from irEntity to be used into IRReader.
	 If inexistant, creates one"
	| irkey |
	irkey := json at: 'key' ifAbsentPut: [ 'anonymous' , (counter := counter+1) asString ].
	^self at: irkey put: (IREntity from: json)

]

{ #category : #reading }
IRReader >> at: aKey put: anIR [
	^entities at: aKey put: anIR

]

{ #category : #converting }
IRReader >> defineFamixEntities [
	entities valuesDo: [ :anIr |
		(anIr isAnonymous)
		ifFalse: [
			self mooseModel add: anIr toFamix.
			anIr famix hasSourceAnchor
				ifTrue: [ self mooseModel add: anIr famix sourceAnchor ]
		]
	].

]

{ #category : #accessing }
IRReader >> entities [
	^ entities
]

{ #category : #accessing }
IRReader >> entityAtKey: irKey [
	^irKey
		ifNil: [ self ]  "reader is the only entity without key"
		ifNotNil: [entities at: irKey]
]

{ #category : #accessing }
IRReader >> famixClass [
	^FamixFortranModel
]

{ #category : #initialization }
IRReader >> initialize [
	entities := Dictionary new.
	counter := 0.

]

{ #category : #testing }
IRReader >> isAnonymous [
	^ false
]

{ #category : #testing }
IRReader >> isNamed: aString [
	^famix name = aString
]

{ #category : #accessing }
IRReader >> mooseModel [
	^famix
]

{ #category : #accessing }
IRReader >> mooseModel: anObject [
	famix := anObject
]

{ #category : #reading }
IRReader >> readFromFile: filename [
	filename asFileReference readStreamDo: [:stream |
		self readFromStream: stream
	]
]

{ #category : #reading }
IRReader >> readFromStream: stream [
	| reader |
	reader := NeoJSONReader on: stream.
	^ [ stream atEnd ] whileFalse: [ self addEntity: reader next ]
]

{ #category : #converting }
IRReader >> referenceFamixEntities [
	"resolve used modules (required for proper name resolution)"
	entities valuesDo: [ :entity |
		(entity isKind: 'USEMODULE')
		ifTrue: [ entity toFamix ]
	].

	"other references to resolve"
	entities valuesDo: [ :entity |
		((entity isAnonymous) and: [ (entity isKind: 'USEMODULE') not ])
		ifTrue: [ entity toFamix ]
	]
]

{ #category : #resolving }
IRReader >> resolveFunction: aString [
	"look for a function named 'aString' and returns all found (presumably exactly one)"
	^self entities values
		select: [ :ir |
			(ir isKind: 'FUNCTION') and: [
			 ir isNamed: aString ] ]
		thenCollect: #famix
]

{ #category : #resolving }
IRReader >> resolveModule: aString [
	"look for a module named 'aString' and returns all found (presumably exactly one)"
	^self entities values
		select: [ :ir |
			(ir isKind: 'MODULE') and: [
			 ir isNamed: aString ] ]
		thenCollect: #famix
]

{ #category : #resolving }
IRReader >> resolveReference: aString [
	^self entities values
		select: [ :ir |
			(ir isNamed: aString) and: [
			 (ir isKind: 'FUNCTION') or: [
				ir isKind: 'VARIABLE' ] ] ]
		thenCollect: #famix
]

{ #category : #resolving }
IRReader >> resolveVariable: aString [
	^self entities values
		select: [ :ir |
			(ir isNamed: aString) and: [
				ir isKind: 'VARIABLE' ] ]
		thenCollect: #famix
]

{ #category : #converting }
IRReader >> setFamixParents [
	entities valuesDo: [ :anIr |
		(anIr isAnonymous)
		ifFalse: [ anIr setFamixParent ]
	]
]

{ #category : #converting }
IRReader >> setParentIfNil: anIR [
	"no parent for reader"
]

{ #category : #converting }
IRReader >> setParents [
	entities valuesDo: [ :anIr |
		anIr setParentIfNil: self
	]
]

{ #category : #converting }
IRReader >> toFamix [
	super toFamix.
	famix name: Date today ddmmyyyy , '-' , Time now hhmm24.

	self setParents.
	self defineFamixEntities.
	self setFamixParents.
	self referenceFamixEntities

]
