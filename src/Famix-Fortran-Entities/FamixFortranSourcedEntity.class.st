Class {
	#name : #FamixFortranSourcedEntity,
	#superclass : #FamixFortranEntity,
	#traits : 'FamixTSourceEntity + FamixTWithComments + FamixTWithFiles',
	#classTraits : 'FamixTSourceEntity classTrait + FamixTWithComments classTrait + FamixTWithFiles classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranSourcedEntity class >> annotation [

	<MSEClass: #SourcedEntity super: #FamixFortranEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]
