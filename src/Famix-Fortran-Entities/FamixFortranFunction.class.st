Class {
	#name : #FamixFortranFunction,
	#superclass : #FamixFortranSourcedEntity,
	#traits : 'FamixTDefinedInModule + FamixTInvocable + FamixTNamespace + FamixTNamespaceEntity + FamixTPossibleStub + FamixTWithAccesses + FamixTWithInvocations + FamixTWithLocalVariables + FamixTWithParameters + FamixTWithSignature + FamixTWithStatements',
	#classTraits : 'FamixTDefinedInModule classTrait + FamixTInvocable classTrait + FamixTNamespace classTrait + FamixTNamespaceEntity classTrait + FamixTPossibleStub classTrait + FamixTWithAccesses classTrait + FamixTWithInvocations classTrait + FamixTWithLocalVariables classTrait + FamixTWithParameters classTrait + FamixTWithSignature classTrait + FamixTWithStatements classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranFunction class >> annotation [

	<MSEClass: #Function super: #FamixFortranSourcedEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]
