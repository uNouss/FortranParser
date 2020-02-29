Class {
	#name : #FamixFortranGlobalVariable,
	#superclass : #FamixFortranNamedEntity,
	#traits : 'FamixTGlobalVariable + FamixTStructuralEntity',
	#classTraits : 'FamixTGlobalVariable classTrait + FamixTStructuralEntity classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranGlobalVariable class >> annotation [

	<FMClass: #GlobalVariable super: #FamixFortranNamedEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]
