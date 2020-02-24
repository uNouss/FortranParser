Class {
	#name : #FamixFortranBehaviouralEntity,
	#superclass : #FamixFortranNamedEntity,
	#traits : 'FamixTNamespace + FamixTWithAccesses + FamixTWithInvocations + FamixTWithLocalVariables + FamixTWithStatements',
	#classTraits : 'FamixTNamespace classTrait + FamixTWithAccesses classTrait + FamixTWithInvocations classTrait + FamixTWithLocalVariables classTrait + FamixTWithStatements classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranBehaviouralEntity class >> annotation [

	<FMClass: #BehaviouralEntity super: #FamixFortranNamedEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #testing }
FamixFortranBehaviouralEntity >> isBehaviouralEntity [

	<generated>
	^ true
]
