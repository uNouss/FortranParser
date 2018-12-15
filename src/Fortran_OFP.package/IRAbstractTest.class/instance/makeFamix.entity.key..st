private utilities
makeFamix: aFamixClass entity: assocList key: aString
	| entity fmx |
	entity := self makeEntity: assocList key: aString.
	fmx := aFamixClass new.
	entity famix: fmx.
	^ fmx
