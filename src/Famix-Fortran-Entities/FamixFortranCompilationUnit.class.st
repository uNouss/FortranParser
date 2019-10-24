Class {
	#name : #FamixFortranCompilationUnit,
	#superclass : #FamixFortranNamedEntity,
	#traits : 'FamixTGlobalVariableScope + FamixTNamespace + FamixTWithFunctions + FamixTWithTypes',
	#classTraits : 'FamixTGlobalVariableScope classTrait + FamixTNamespace classTrait + FamixTWithFunctions classTrait + FamixTWithTypes classTrait',
	#instVars : [
		'#module => FMOne type: #FamixFortranModule opposite: #compilationUnit'
	],
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranCompilationUnit class >> annotation [

	<MSEClass: #CompilationUnit super: #FamixFortranNamedEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixFortranCompilationUnit >> module [
	"Relation named: #module type: #FamixFortranModule opposite: #compilationUnit"

	<generated>
	^ module
]

{ #category : #accessing }
FamixFortranCompilationUnit >> module: anObject [

	<generated>
	module := anObject

]

{ #category : #navigation }
FamixFortranCompilationUnit >> moduleGroup [
	<generated>
	<navigation: 'Module'>
	^ MooseGroup with: self module
]
