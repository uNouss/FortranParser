"
I can be imported (as importing a package)
"
Trait {
	#name : #FamixFortranTImportable,
	#instVars : [
		'#importers => FMMany type: #FamixFortranTWithImports opposite: #importedEntities'
	],
	#category : #'Famix-Fortran-Entities-Traits'
}

{ #category : #meta }
FamixFortranTImportable classSide >> annotation [

	<MSEClass: #TImportable super: #Object>
	<package: #'Famix-Fortran-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FamixFortranTImportable >> importers [
	"Relation named: #importers type: #FamixFortranTWithImports opposite: #importedEntities"

	<generated>
	<MSEComment: 'The entities that import this one'>
	<derived>
	<target>
	^ importers
]

{ #category : #accessing }
FamixFortranTImportable >> importers: anObject [

	<generated>
	importers value: anObject

]
