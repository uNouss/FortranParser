Class {
	#name : #FamixFortranNamedEntity,
	#superclass : #FamixFortranSourcedEntity,
	#traits : 'FamixTNamed + TDependencyQueries + TEntityMetaLevelDependency',
	#classTraits : 'FamixTNamed classTrait + TDependencyQueries classTrait + TEntityMetaLevelDependency classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranNamedEntity class >> annotation [

	<MSEClass: #NamedEntity super: #FamixFortranSourcedEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #'as yet unclassified' }
FamixFortranNamedEntity >> fortranOwner [
	^self parents ifEmpty: [ nil ] ifNotEmpty: #anyOne
]
