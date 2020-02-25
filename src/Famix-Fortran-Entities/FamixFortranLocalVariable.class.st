Class {
	#name : #FamixFortranLocalVariable,
	#superclass : #FamixFortranNamedEntity,
	#traits : 'FamixTLocalVariable + FamixTStructuralEntity',
	#classTraits : 'FamixTLocalVariable classTrait + FamixTStructuralEntity classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranLocalVariable class >> annotation [

	<FMClass: #LocalVariable super: #FamixFortranNamedEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]
