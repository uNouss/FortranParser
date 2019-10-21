Class {
	#name : #FamixFortranProgram,
	#superclass : #MooseEntity,
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranProgram class >> annotation [

	<MSEClass: #Program super: #MooseEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixFortranProgram class >> metamodel [

	<generated>
	^ FamixFortranModel metamodel
]

{ #category : #testing }
FamixFortranProgram >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranProgram >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranProgram >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranProgram >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranProgram >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranProgram >> isType [

	<generated>
	^ false
]
