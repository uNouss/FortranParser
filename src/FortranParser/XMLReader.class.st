Class {
	#name : #XMLReader,
	#superclass : #XMLNodeVisitor,
	#instVars : [
		'counter',
		'entities'
	],
	#category : #'FortranParser-Import'
}

{ #category : #reading }
XMLReader class >> readFromFile: filename [
	^self new
		readFromFile: filename ;
		yourself
]

{ #category : #initialization }
XMLReader >> initialize [
	super initialize.

	entities := Dictionary new.
	counter := 0.

]

{ #category : #reading }
XMLReader >> nodeFactory [
	^XMLPluggableElementFactory new
		elementClass: XMLElement ;
		handleElement: 'file' withClass: XMLEntityCOMPILATIONUNIT ;
		handleElement: 'program' withClass: XMLEntityPROGRAM ;
		handleElement: 'module' withClass: XMLEntityMODULE ;
		handleElement: 'function' withClass: XMLEntityFUNCTION ;
		handleElement: 'subroutine' withClass: XMLEntitySUBPROGRAM ;
		handleElement: 'argument' withClass: XMLEntityVARIABLE ;
		handleElement: 'variable' withClass: XMLEntityVARIABLE ;
		handleElement: 'use' withClass: XMLEntityUSEMODULE ;
		"handleElement: anElementName attributes: aCollectionOrAttributeSpec withClass: aClass"
		yourself
]

{ #category : #reading }
XMLReader >> readFromFile: filename [
	filename asFileReference readStreamDo: [:stream |
		self readFromStream: stream
	]
]

{ #category : #reading }
XMLReader >> readFromStream: stream [
	| xmlDOM |
	xmlDOM := (XMLDOMParser on: stream)
		isValidating: false ;
		usesNamespaces: false ;
		nodeFactory: (self nodeFactory) ;
		parseDocument.
	xmlDOM acceptNodeVisitor: self
]

{ #category : #visiting }
XMLReader >> visitCData: aNode [
	1halt.
	^ super visitCData: aNode
]

{ #category : #visiting }
XMLReader >> visitComment: aNode [
	1halt.
	^ super visitComment: aNode
]

{ #category : #visiting }
XMLReader >> visitDocument: aNode [
	1halt.
	^ super visitDocument: aNode
]

{ #category : #visiting }
XMLReader >> visitElement: aNode [
	1halt.
	^ super visitElement: aNode
]

{ #category : #visiting }
XMLReader >> visitNode: aNode [
	1halt.
	^ super visitNode: aNode
]

{ #category : #visiting }
XMLReader >> visitNodeWithElements: aNode [
	^ super visitNodeWithElements: aNode
]

{ #category : #visiting }
XMLReader >> visitPI: aNode [
	1halt.
	^ super visitPI: aNode
]

{ #category : #visiting }
XMLReader >> visitStringNode: aNode [
	"ignore whitespaces"
]
