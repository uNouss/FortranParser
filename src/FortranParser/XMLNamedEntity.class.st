Class {
	#name : #XMLNamedEntity,
	#superclass : #XMLEntity,
	#category : #'FortranParser-IRModel'
}

{ #category : #accessing }
XMLNamedEntity >> nameAttribute [
	^ self attributeAt: 'name'
]
