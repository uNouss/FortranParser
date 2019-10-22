Class {
	#name : #FamixFortranLocalVariable,
	#superclass : #FamixFortranNamedEntity,
	#traits : 'FamixTLocalVariable + FamixTNamespaceEntity + FamixTStructuralEntity',
	#classTraits : 'FamixTLocalVariable classTrait + FamixTNamespaceEntity classTrait + FamixTStructuralEntity classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranLocalVariable class >> annotation [

	<MSEClass: #LocalVariable super: #FamixFortranNamedEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixFortranLocalVariable class >> requirements [

	<generated>
	^ { FamixFortranFunction }
]
