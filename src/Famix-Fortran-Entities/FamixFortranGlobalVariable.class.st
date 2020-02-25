Class {
	#name : #FamixFortranGlobalVariable,
	#superclass : #FamixFortranNamedEntity,
	#traits : 'FamixFortranTPossibleStub + FamixTGlobalVariable + FamixTStructuralEntity',
	#classTraits : 'FamixFortranTPossibleStub classTrait + FamixTGlobalVariable classTrait + FamixTStructuralEntity classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranGlobalVariable class >> annotation [

	<FMClass: #GlobalVariable super: #FamixFortranNamedEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]
