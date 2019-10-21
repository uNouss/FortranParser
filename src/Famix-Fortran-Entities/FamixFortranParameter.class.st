Class {
	#name : #FamixFortranParameter,
	#superclass : #FamixFortranNamedEntity,
	#traits : 'FamixTNamespaceEntity + FamixTParameter + FamixTStructuralEntity',
	#classTraits : 'FamixTNamespaceEntity classTrait + FamixTParameter classTrait + FamixTStructuralEntity classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranParameter class >> annotation [

	<MSEClass: #Parameter super: #FamixFortranNamedEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixFortranParameter class >> requirements [

	<generated>
	^ { FamixFortranFunction }
]
