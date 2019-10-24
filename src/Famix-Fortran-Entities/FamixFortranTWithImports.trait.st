"
I can import things (eg a package)
"
Trait {
	#name : #FamixFortranTWithImports,
	#instVars : [
		'#importedEntities => FMMany type: #FamixFortranTImportable opposite: #importers'
	],
	#category : #'Famix-Fortran-Entities-Traits'
}

{ #category : #meta }
FamixFortranTWithImports classSide >> annotation [

	<MSEClass: #TWithImports super: #Object>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixFortranTWithImports >> importedEntities [
	"Relation named: #importedEntities type: #FamixFortranTImportable opposite: #importers"

	<generated>
	<MSEComment: 'The entities that are imported by this one'>
	<derived>
	<source>
	^ importedEntities
]

{ #category : #accessing }
FamixFortranTWithImports >> importedEntities: anObject [

	<generated>
	importedEntities value: anObject

]
