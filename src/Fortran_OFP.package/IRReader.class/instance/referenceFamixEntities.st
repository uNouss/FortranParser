converting
referenceFamixEntities
	"resolve used modules (required for proper name resolution)"
	entities valuesDo: [ :entity |
		(entity isKind: 'USEMODULE')
		ifTrue: [ entity toFamix ]
	].

	"other references to resolve"
	entities valuesDo: [ :entity |
		((entity isAnonymous) and: [ (entity isKind: 'USEMODULE') not ])
		ifTrue: [ entity toFamix ]
	]