Class {
	#name : #FamixFortranInvocation,
	#superclass : #FamixFortranAssociation,
	#traits : 'FamixTInvocation + FamixTWithSignature',
	#classTraits : 'FamixTInvocation classTrait + FamixTWithSignature classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranInvocation class >> annotation [

	<MSEClass: #Invocation super: #FamixFortranAssociation>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]
