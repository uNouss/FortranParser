Class {
	#name : #FamixFortranProgram,
	#superclass : #FamixFortranBehaviouralEntity,
	#traits : 'FamixFortranTWithimports + FamixTModule + FamixTNamespace + FamixTWithTypes',
	#classTraits : 'FamixFortranTWithimports classTrait + FamixTModule classTrait + FamixTNamespace classTrait + FamixTWithTypes classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranProgram class >> annotation [

	<FMClass: #Program super: #FamixFortranBehaviouralEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]
