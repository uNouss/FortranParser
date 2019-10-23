Class {
	#name : #FamixFortranProgram,
	#superclass : #FamixFortranNamedEntity,
	#traits : 'FamixTGlobalVariableScope + FamixTNamespace + FamixTWithFunctions + FamixTWithTypes',
	#classTraits : 'FamixTGlobalVariableScope classTrait + FamixTNamespace classTrait + FamixTWithFunctions classTrait + FamixTWithTypes classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranProgram class >> annotation [

	<MSEClass: #Program super: #FamixFortranNamedEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]
