Class {
	#name : #FamixFortranProgram,
	#superclass : #FamixFortranBehaviouralEntity,
	#traits : 'FamixFortranTWithImports + FamixTModule + FamixTNamespace + FamixTWithTypes',
	#classTraits : 'FamixFortranTWithImports classTrait + FamixTModule classTrait + FamixTNamespace classTrait + FamixTWithTypes classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranProgram class >> annotation [

	<FMClass: #Program super: #FamixFortranBehaviouralEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]
