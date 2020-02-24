Class {
	#name : #FamixFortranGenerator,
	#superclass : #FamixFileBasedLanguageGenerator,
	#instVars : [
		'module',
		'globalVariable',
		'localVariable',
		'parameter',
		'function',
		'type',
		'invocation',
		'access',
		'compilationUnit',
		'program',
		'tImportable',
		'tWithImports',
		'behaviouralEntity'
	],
	#category : #'Famix-Fortran-Generator'
}

{ #category : #accessing }
FamixFortranGenerator class >> packageName [
	^ #'Famix-Fortran-Entities'
]

{ #category : #accessing }
FamixFortranGenerator class >> prefix [

	^ #'FamixFortran'
]

{ #category : #definition }
FamixFortranGenerator >> defineClasses [

	super defineClasses.

	behaviouralEntity := builder  newClassNamed: #BehaviouralEntity.
	
	compilationUnit := builder  newClassNamed: #CompilationUnit.
	module := builder  newClassNamed: #Module.
	program := builder  newClassNamed: #Program.
	globalVariable := builder newClassNamed: #GlobalVariable.
	localVariable := builder newClassNamed: #LocalVariable.
	parameter := builder newClassNamed: #Parameter.
	function := builder newClassNamed: #Function.
	"procedure := builder newClassNamed: #Procedure."
	type := builder newClassNamed: #Type.
	invocation := builder newClassNamed: #Invocation.
	access := builder newClassNamed: #Access.

]

{ #category : #definition }
FamixFortranGenerator >> defineHierarchy [

	super defineHierarchy.

	access --|> association.
	access --|> #TAccess.

	invocation --|> association.
	invocation --|> #TInvocation.
	invocation --|> #TWithSignature.

	behaviouralEntity --|> namedEntity.
	behaviouralEntity --|> #TWithStatements.
	behaviouralEntity --|> #TWithAccesses.
	behaviouralEntity --|> #TWithInvocations.
	behaviouralEntity --|> #TNamespace.

	compilationUnit --|> namedEntity.
	compilationUnit --|> #TNamespace.

	module --|> namedEntity.
	module --|> #TModule.
	module --|> #TImportable.
	module --|> #TWithImports.
	module --|> #TWithFunctions.
	module --|> #TWithTypes.
	module --|> #TGlobalVariableScope.
	module --|> #TNamespace.

	globalVariable --|> namedEntity.
	globalVariable --|> #TStructuralEntity.
	globalVariable --|> #TDefinedInModule.
	globalVariable --|> #TPossibleStub.

	program --|> behaviouralEntity.
	program --|> #TWithTypes.
	program --|> #TDefinedInModule.
	program --|> #TWithImports.
	program --|> #TNamespace.

	function --|> behaviouralEntity.
	function --|> #TInvocable.
	function --|> #TPossibleStub.
	function --|> #TDefinedInModule.
	function --|> #TWithSignature.

	localVariable --|> namedEntity.
	localVariable --|> #TStructuralEntity.

	parameter --|> namedEntity.
	parameter --|> #TStructuralEntity.

	type --|> namedEntity.
	type --|> #TWithTypeAliases.
	type --|> #TParameterizedTypeUser.
	type --|> #TDefinedInModule.

]

{ #category : #definition }
FamixFortranGenerator >> defineProperties [
	super defineProperties.
	
	behaviouralEntity withTesting
]

{ #category : #definition }
FamixFortranGenerator >> defineRelations [
	super defineRelations.

	self apply: #TWithFunctions on: compilationUnit oppositeOn: function.
	self apply: #TWithFunctions on: module oppositeOn: function.
	self apply: #TWithTypes on: compilationUnit oppositeOn: type.
	self apply: #TGlobalVariableScope on: compilationUnit oppositeOn: globalVariable.
	self apply: #TWithParameters on: function oppositeOn: parameter.
	self apply: #TWithLocalVariables on: behaviouralEntity oppositeOn: localVariable.

	((tWithImports property: #importedEntities)
			comment: 'The entities that are imported by this one' ;
			source)
		*-*
	((tImportable property: #importers)
			comment: 'The entities that import this one' ;
			target ;
			derived).
			
	compilationUnit <>- module.
]

{ #category : #definition }
FamixFortranGenerator >> defineTraits [
    super defineTraits.

    tImportable := builder newTraitNamed: #TImportable comment: 'I can be imported (as importing a package)'.
    tWithImports := builder newTraitNamed: #TWithImports comment: 'I can import things (eg a package)'.
]
