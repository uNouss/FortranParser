Class {
	#name : #FamixFortranModule,
	#superclass : #FamixFortranNamedEntity,
	#traits : 'FamixFortranTImportable + FamixFortranTWithImports + FamixTGlobalVariableScope + FamixTModule + FamixTNamespace + FamixTWithFunctions + FamixTWithTypes',
	#classTraits : 'FamixFortranTImportable classTrait + FamixFortranTWithImports classTrait + FamixTGlobalVariableScope classTrait + FamixTModule classTrait + FamixTNamespace classTrait + FamixTWithFunctions classTrait + FamixTWithTypes classTrait',
	#instVars : [
		'#compilationUnit => FMOne type: #FamixFortranCompilationUnit opposite: #module'
	],
	#category : #'Famix-Fortran-Entities-Entities'
}

{ #category : #meta }
FamixFortranModule class >> annotation [

	<FMClass: #Module super: #FamixFortranNamedEntity>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixFortranModule >> compilationUnit [
	"Relation named: #compilationUnit type: #FamixFortranCompilationUnit opposite: #module"

	<generated>
	<container>
	<derived>
	^ compilationUnit
]

{ #category : #accessing }
FamixFortranModule >> compilationUnit: anObject [

	<generated>
	compilationUnit := anObject
]

{ #category : #navigation }
FamixFortranModule >> compilationUnitGroup [
	<generated>
	<navigation: 'CompilationUnit'>
	^ MooseGroup with: self compilationUnit
]
