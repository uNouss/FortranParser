Class {
	#name : #FamixFortranType,
	#superclass : #FamixFortranNamedEntity,
	#traits : 'FamixTDefinedInModule + FamixTNamespaceEntity + FamixTParameterizedTypeUser + FamixTType + FamixTWithTypeAliases',
	#classTraits : 'FamixTDefinedInModule classTrait + FamixTNamespaceEntity classTrait + FamixTParameterizedTypeUser classTrait + FamixTType classTrait + FamixTWithTypeAliases classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranType class >> annotation [

	<MSEClass: #Type super: #FamixFortranNamedEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixFortranType class >> requirements [

	<generated>
	^ { FamixFortranModule }
]
