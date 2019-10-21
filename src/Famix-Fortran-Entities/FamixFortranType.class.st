Class {
	#name : #FamixFortranType,
	#superclass : #MooseEntity,
	#traits : 'FamixTDefinedInModule + FamixTNamespaceEntity + FamixTParameterizedTypeUser + FamixTType + FamixTWithTypeAliases',
	#classTraits : 'FamixTDefinedInModule classTrait + FamixTNamespaceEntity classTrait + FamixTParameterizedTypeUser classTrait + FamixTType classTrait + FamixTWithTypeAliases classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranType class >> annotation [

	<MSEClass: #Type super: #MooseEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixFortranType class >> metamodel [

	<generated>
	^ FamixFortranModel metamodel
]

{ #category : #meta }
FamixFortranType class >> requirements [

	<generated>
	^ { FamixFortranModule }
]

{ #category : #testing }
FamixFortranType >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranType >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranType >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranType >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranType >> isStructuralEntity [

	<generated>
	^ false
]
