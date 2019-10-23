Class {
	#name : #FamixFortranCompilationUnit,
	#superclass : #FamixFortranNamedEntity,
	#traits : 'FamixTGlobalVariableScope + FamixTWithFunctions + FamixTWithTypes',
	#classTraits : 'FamixTGlobalVariableScope classTrait + FamixTWithFunctions classTrait + FamixTWithTypes classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranCompilationUnit class >> annotation [

	<MSEClass: #CompilationUnit super: #FamixFortranNamedEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]
