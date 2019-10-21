Class {
	#name : #FamixFortranFunction,
	#superclass : #FamixFortranNamedEntity,
	#traits : 'FamixTDefinedInModule + FamixTInvocable + FamixTNamespace + FamixTNamespaceEntity + FamixTPossibleStub + FamixTWithAccesses + FamixTWithInvocations + FamixTWithLocalVariables + FamixTWithParameters + FamixTWithSignature + FamixTWithStatements',
	#classTraits : 'FamixTDefinedInModule classTrait + FamixTInvocable classTrait + FamixTNamespace classTrait + FamixTNamespaceEntity classTrait + FamixTPossibleStub classTrait + FamixTWithAccesses classTrait + FamixTWithInvocations classTrait + FamixTWithLocalVariables classTrait + FamixTWithParameters classTrait + FamixTWithSignature classTrait + FamixTWithStatements classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranFunction class >> annotation [

	<MSEClass: #Function super: #FamixFortranNamedEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]
