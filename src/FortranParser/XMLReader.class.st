"
I am responsible for reading a data file as exported by the OFP parser (https://github.com/mbdevpl/open-fortran-parser-xml) and to create a dictionary of IREntities from it
[[[
reader := XMLReader readFromFile: 'ast.xml'.
]]]

I can also convert my IREntities into famix ones (thus populating a Famix Model)
[[[
reader toFamix.
]]]

"
Class {
	#name : #XMLReader,
	#superclass : #Object,
	#instVars : [
		'model'
	],
	#category : #'FortranParser-Import'
}

{ #category : #reading }
XMLReader class >> readFromFile: filename [
	^self new
		readFromFile: filename
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
		handleElement: 'ofp' withClass: XMLEntityModel ;
		"handleElement: anElementName attributes: aCollectionOrAttributeSpec withClass: aClass"
		yourself
]

{ #category : #reading }
XMLReader >> readFromFile: filename [
	^filename asFileReference readStreamDo: [:stream |
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
	^model := xmlDOM acceptNodeVisitor: IRModelNodeVisitor new
]
