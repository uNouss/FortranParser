Class {
	#name : #XMLNamedEntity,
	#superclass : #XMLEntity,
	#category : #'FortranParser-XMLNodes'
}

{ #category : #accessing }
XMLNamedEntity >> nameAttribute [
	^ self attributeAt: 'name'
]

{ #category : #accessing }
XMLNamedEntity >> printOn: aStream [
	super printOn: aStream.
	aStream
		<< $: ;
		<< self nameAttribute
]
