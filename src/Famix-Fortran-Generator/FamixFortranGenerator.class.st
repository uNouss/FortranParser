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
		'program'
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

	compilationUnit --|> namedEntity.
	compilationUnit --|> #TWithFunctions.
	compilationUnit --|> #TWithTypes.
	compilationUnit --|> #TGlobalVariableScope.
	"compilationUnit --|> #TNamespace.  ???"

	program --|> namedEntity.
	program --|> #TWithFunctions.
	program --|> #TWithTypes.
	program --|> #TGlobalVariableScope.
	program --|> #TNamespace.

	module --|> namedEntity.
	module --|> #TModule.
	module --|> #TWithFunctions.
	module --|> #TWithTypes.
	module --|> #TGlobalVariableScope.
	module --|> #TNamespace.

	globalVariable --|> namedEntity.
	globalVariable --|> #TStructuralEntity.
	globalVariable --|> #TGlobalVariable.
	globalVariable --|> #TDefinedInModule.
	globalVariable --|> #TPossibleStub.
	globalVariable --|> #TNamespaceEntity.

	function --|> namedEntity.
	function --|> #TFunction.
	function --|> #TWithAccesses.
	function --|> #TWithStatements.
	function --|> #TNamespace.
	function --|> #TInvocable.
	function --|> #TWithInvocations.
	function --|> #TPossibleStub.
	function --|> #TWithLocalVariables.
	function --|> #TWithParameters.
	function --|> #TDefinedInModule.
	function --|> #TNamespaceEntity.
	function --|> #TWithSignature.

	localVariable --|> namedEntity.
	localVariable --|> #TStructuralEntity.
	localVariable --|> #TLocalVariable.
	localVariable --|> #TNamespaceEntity.

	parameter --|> namedEntity.
	parameter --|> #TStructuralEntity.
	parameter --|> #TParameter.
	parameter --|> #TNamespaceEntity.

	type --|> namedEntity.
	type --|> #TType.
	type --|> #TWithTypeAliases.
	type --|> #TParameterizedTypeUser.
	type --|> #TDefinedInModule.
	type --|> #TNamespaceEntity.

]
