Class {
	#name : #FamixFortranModule,
	#superclass : #MooseEntity,
	#traits : 'FamixTGlobalVariableScope + FamixTModule + FamixTNamespace + FamixTWithFunctions + FamixTWithTypes',
	#classTraits : 'FamixTGlobalVariableScope classTrait + FamixTModule classTrait + FamixTNamespace classTrait + FamixTWithFunctions classTrait + FamixTWithTypes classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranModule class >> annotation [

	<MSEClass: #Module super: #MooseEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixFortranModule class >> metamodel [

	<generated>
	^ FamixFortranModel metamodel
]

{ #category : #testing }
FamixFortranModule >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranModule >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranModule >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranModule >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranModule >> isType [

	<generated>
	^ false
]
