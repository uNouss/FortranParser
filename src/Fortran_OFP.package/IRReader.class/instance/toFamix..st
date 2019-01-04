convertion
toFamix: aMooseModel

	"definitions of Famix entities"
	entities valuesDo: [ :entity |
		(entity isAnonymous)
		ifFalse: [ entity toFamix: aMooseModel ]
	].

	"references to Famix entities"
	entities valuesDo: [ :entity |
		(entity isAnonymous)
		ifTrue: [ entity toFamix: aMooseModel ]
	]