Class {
	#name : #FamixFortranCompilationUnit,
	#superclass : #MooseEntity,
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranCompilationUnit class >> annotation [

	<MSEClass: #CompilationUnit super: #MooseEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixFortranCompilationUnit class >> metamodel [

	<generated>
	^ FamixFortranModel metamodel
]

{ #category : #testing }
FamixFortranCompilationUnit >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranCompilationUnit >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranCompilationUnit >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranCompilationUnit >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranCompilationUnit >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranCompilationUnit >> isType [

	<generated>
	^ false
]
