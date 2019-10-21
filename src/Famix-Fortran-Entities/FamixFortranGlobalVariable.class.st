Class {
	#name : #FamixFortranGlobalVariable,
	#superclass : #MooseEntity,
	#traits : 'FamixTDefinedInModule + FamixTGlobalVariable + FamixTNamespaceEntity + FamixTPossibleStub + FamixTStructuralEntity',
	#classTraits : 'FamixTDefinedInModule classTrait + FamixTGlobalVariable classTrait + FamixTNamespaceEntity classTrait + FamixTPossibleStub classTrait + FamixTStructuralEntity classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranGlobalVariable class >> annotation [

	<MSEClass: #GlobalVariable super: #MooseEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixFortranGlobalVariable class >> metamodel [

	<generated>
	^ FamixFortranModel metamodel
]

{ #category : #meta }
FamixFortranGlobalVariable class >> requirements [

	<generated>
	^ { FamixFortranModule }
]

{ #category : #testing }
FamixFortranGlobalVariable >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranGlobalVariable >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranGlobalVariable >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranGlobalVariable >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranGlobalVariable >> isType [

	<generated>
	^ false
]
