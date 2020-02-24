Class {
	#name : #FamixFortranProgram,
	#superclass : #FamixFortranBehaviouralEntity,
	#traits : 'FamixFortranTWithImports + FamixTDefinedInModule + FamixTNamespace + FamixTWithTypes',
	#classTraits : 'FamixFortranTWithImports classTrait + FamixTDefinedInModule classTrait + FamixTNamespace classTrait + FamixTWithTypes classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranProgram class >> annotation [

	<FMClass: #Program super: #FamixFortranBehaviouralEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]
