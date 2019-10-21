Class {
	#name : #FamixFortranModule,
	#superclass : #FamixFortranNamedEntity,
	#traits : 'FamixTGlobalVariableScope + FamixTModule + FamixTNamespace + FamixTWithFunctions + FamixTWithTypes',
	#classTraits : 'FamixTGlobalVariableScope classTrait + FamixTModule classTrait + FamixTNamespace classTrait + FamixTWithFunctions classTrait + FamixTWithTypes classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranModule class >> annotation [

	<MSEClass: #Module super: #FamixFortranNamedEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]
