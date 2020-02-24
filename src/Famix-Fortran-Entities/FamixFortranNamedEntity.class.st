Class {
	#name : #FamixFortranNamedEntity,
	#superclass : #FamixFortranSourcedEntity,
	#traits : 'FamixTNamedEntity + TDependencyQueries + TEntityMetaLevelDependency',
	#classTraits : 'FamixTNamedEntity classTrait + TDependencyQueries classTrait + TEntityMetaLevelDependency classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranNamedEntity class >> annotation [

	<FMClass: #NamedEntity super: #FamixFortranSourcedEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]
