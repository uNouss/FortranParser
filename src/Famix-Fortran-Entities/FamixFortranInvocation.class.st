Class {
	#name : #FamixFortranInvocation,
	#superclass : #FamixFortranAssociation,
	#traits : 'FamixTInvocation + FamixTWithSignature',
	#classTraits : 'FamixTInvocation classTrait + FamixTWithSignature classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranInvocation class >> annotation [

	<FMClass: #Invocation super: #FamixFortranAssociation>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]
