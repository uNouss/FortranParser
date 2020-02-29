Class {
	#name : #FamixFortranInvocation,
	#superclass : #MooseEntity,
	#traits : 'FamixTHasSignature + FamixTInvocation',
	#classTraits : 'FamixTHasSignature classTrait + FamixTInvocation classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranInvocation class >> annotation [

	<FMClass: #Invocation super: #MooseEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixFortranInvocation class >> metamodel [

	<generated>
	^ FamixFortranModel metamodel
]

{ #category : #testing }
FamixFortranInvocation >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranInvocation >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranInvocation >> isBehaviouralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranInvocation >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranInvocation >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranInvocation >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranInvocation >> isType [

	<generated>
	^ false
]
