Class {
	#name : #BaselineOfFortranParser,
	#superclass : #BaselineOf,
	#category : #BaselineOfFortranParser
}

{ #category : #baselines }
BaselineOfFortranParser >> baseline: spec [
	<baseline>
	spec for: #common do: [ spec
		baseline: 'NeoJSON' with: [ spec repository: 'github://svenvc/NeoJSON' ] ;
		baseline: 'XMLParser' with: [ spec repository: 'github://pharo-contributions/XML-XMLParser/src' ] ;

		package: 'FortranParser'  with: [ spec requires: #('Famix-Fortran-Entities' 'NeoJSON' 'XMLParser') ] ;
		package: 'FortranParser-Tests' with: [ spec requires: #('FortranParser') ] ;
		package: 'Famix-Fortran-Entities' ;
		package: 'Famix-Fortran-Generator' ;

		group: 'default' with: #(core) ;
		group: 'core' with: #('FortranParser') ;
		group: 'tests' with: #('FortranParser-Tests') ;
		group: 'development' with: #('tests' 'Famix-Fortran-Generator')
 ]
]
