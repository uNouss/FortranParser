Class {
	#name : #XMLEntityUSEMODULE,
	#superclass : #XMLEntityAssociation,
	#category : #'FortranParser-IRModel'
}

{ #category : #accessing }
XMLEntityUSEMODULE >> targetAttribute [
	^self attributeAt: 'name'
]
