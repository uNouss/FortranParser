Class {
	#name : #FamixFortranEntity,
	#superclass : #MooseEntity,
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranEntity class >> annotation [

	<MSEClass: #Entity super: #MooseEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixFortranEntity class >> metamodel [

	<generated>
	^ FamixFortranModel metamodel
]

{ #category : #testing }
FamixFortranEntity >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranEntity >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranEntity >> isBehaviouralEntity [
	^false
]

{ #category : #testing }
FamixFortranEntity >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranEntity >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranEntity >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranEntity >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranEntity >> isType [

	<generated>
	^ false
]
