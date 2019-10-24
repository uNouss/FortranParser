Class {
	#name : #IREntityUSEMODULE,
	#superclass : #IREntityAssociation,
	#category : #'Fortran_OFP-IRModel'
}

{ #category : #accessing }
IREntityUSEMODULE >> famixTargetClass [
	^FamixFortranModule
]

{ #category : #testing }
IREntityUSEMODULE >> isKind: aString [
	^ aString = 'USEMODULE'
]

{ #category : #resolving }
IREntityUSEMODULE >> resolveTarget: aString [
	^parentIR resolveModule: aString
]

{ #category : #converting }
IREntityUSEMODULE >> toFamixSource: famixSource soleTarget: famixTarget [
	| imported |
	imported := famixSource importedEntities ifNil: [ OrderedCollection new ].
	imported add: famixTarget.
	famixSource importedEntities: imported
]
