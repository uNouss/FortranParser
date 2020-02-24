Class {
	#name : #FamixFortranGlobalVariable,
	#superclass : #FamixFortranNamedEntity,
	#traits : 'FamixFortranTNamespaceEntity + FamixFortranTPossibleStub + FamixTDefinedInModule + FamixTGlobalVariable + FamixTStructuralEntity',
	#classTraits : 'FamixFortranTNamespaceEntity classTrait + FamixFortranTPossibleStub classTrait + FamixTDefinedInModule classTrait + FamixTGlobalVariable classTrait + FamixTStructuralEntity classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranGlobalVariable class >> annotation [

	<FMClass: #GlobalVariable super: #FamixFortranNamedEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]
