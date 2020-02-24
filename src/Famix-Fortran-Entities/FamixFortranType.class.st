Class {
	#name : #FamixFortranType,
	#superclass : #FamixFortranNamedEntity,
	#traits : 'FamixFortranTNamespaceEntity + FamixTDefinedInModule + FamixTParameterizedTypeUser + FamixTType + FamixTWithTypeAliases',
	#classTraits : 'FamixFortranTNamespaceEntity classTrait + FamixTDefinedInModule classTrait + FamixTParameterizedTypeUser classTrait + FamixTType classTrait + FamixTWithTypeAliases classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranType class >> annotation [

	<FMClass: #Type super: #FamixFortranNamedEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]
