Class {
	#name : #XMLEntity,
	#superclass : #XMLElement,
	#category : #'FortranParser-XMLNodes'
}

{ #category : #printing }
XMLEntity >> prettyPrintOn: aStream [
	self printOn: aStream
]

{ #category : #printing }
XMLEntity >> printContentOn: aStream [
	self printOn: aStream
]

{ #category : #printing }
XMLEntity >> printOn: aStream [
	aStream << self class name
]

{ #category : #printing }
XMLEntity >> stDisplayString [
	^self displayString
]

{ #category : #printing }
XMLEntity >> writeXMLOn: aWriter [

]
