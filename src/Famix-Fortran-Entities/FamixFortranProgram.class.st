Class {
	#name : #FamixFortranProgram,
	#superclass : #FamixFortranNamedEntity,
	#traits : 'FamixTDefinedInModule + FamixTNamespace + FamixTNamespaceEntity + FamixTWithAccesses + FamixTWithInvocations + FamixTWithLocalVariables + FamixTWithStatements + FamixTWithTypes',
	#classTraits : 'FamixTDefinedInModule classTrait + FamixTNamespace classTrait + FamixTNamespaceEntity classTrait + FamixTWithAccesses classTrait + FamixTWithInvocations classTrait + FamixTWithLocalVariables classTrait + FamixTWithStatements classTrait + FamixTWithTypes classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranProgram class >> annotation [

	<MSEClass: #Program super: #FamixFortranNamedEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #testing }
FamixFortranProgram >> isBehaviouralEntity [
	^true
]
