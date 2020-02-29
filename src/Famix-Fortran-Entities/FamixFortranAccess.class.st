Class {
	#name : #FamixFortranAccess,
	#superclass : #MooseEntity,
	#traits : 'FamixTAccess',
	#classTraits : 'FamixTAccess classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranAccess class >> annotation [

	<FMClass: #Access super: #MooseEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixFortranAccess class >> metamodel [

	<generated>
	^ FamixFortranModel metamodel
]

{ #category : #testing }
FamixFortranAccess >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranAccess >> isBehaviouralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranAccess >> isFunction [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranAccess >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranAccess >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranAccess >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranAccess >> isType [

	<generated>
	^ false
]
