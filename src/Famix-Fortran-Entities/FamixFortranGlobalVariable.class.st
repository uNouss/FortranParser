Class {
	#name : #FamixFortranGlobalVariable,
	#superclass : #FamixFortranNamedEntity,
	#traits : 'FamixTDefinedInModule + FamixTGlobalVariable + FamixTNamespaceEntity + FamixTPossibleStub + FamixTStructuralEntity',
	#classTraits : 'FamixTDefinedInModule classTrait + FamixTGlobalVariable classTrait + FamixTNamespaceEntity classTrait + FamixTPossibleStub classTrait + FamixTStructuralEntity classTrait',
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranGlobalVariable class >> annotation [

	<MSEClass: #GlobalVariable super: #FamixFortranNamedEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #meta }
FamixFortranGlobalVariable class >> requirements [

	<generated>
	^ { FamixFortranCompilationUnit. FamixFortranModule. FamixFortranProgram }
]
