Class {
	#name : #FamixFortranLocalVariable,
	#superclass : #MooseEntity,
	#traits : 'FamixTLocalVariable + FamixTNamespaceEntity + FamixTStructuralEntity',
	#classTraits : 'FamixTLocalVariable classTrait + FamixTNamespaceEntity classTrait + FamixTStructuralEntity classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranLocalVariable class >> annotation [

	<MSEClass: #LocalVariable super: #MooseEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixFortranLocalVariable class >> metamodel [

	<generated>
	^ FamixFortranModel metamodel
]

{ #category : #meta }
FamixFortranLocalVariable class >> requirements [

	<generated>
	^ { FamixFortranFunction }
]

{ #category : #testing }
FamixFortranLocalVariable >> isAccess [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranLocalVariable >> isAssociation [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranLocalVariable >> isInvocation [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranLocalVariable >> isNamespace [

	<generated>
	^ false
]

{ #category : #testing }
FamixFortranLocalVariable >> isType [

	<generated>
	^ false
]
