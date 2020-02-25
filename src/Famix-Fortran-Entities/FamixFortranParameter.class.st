Class {
	#name : #FamixFortranParameter,
	#superclass : #FamixFortranNamedEntity,
	#traits : 'FamixTParameter + FamixTStructuralEntity',
	#classTraits : 'FamixTParameter classTrait + FamixTStructuralEntity classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranParameter class >> annotation [

	<FMClass: #Parameter super: #FamixFortranNamedEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]
