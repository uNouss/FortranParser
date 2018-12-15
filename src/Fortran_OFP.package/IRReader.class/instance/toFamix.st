convertion
toFamix
	"definitions of Famix entities"
	entities valuesDo: [ :entity |
		(entity isAnonymous)
		ifFalse: [ entity toFamix ]
	].

	"references to Famix entities"
	entities valuesDo: [ :entity |
		(entity isAnonymous)
		ifTrue: [ entity toFamix ]
	]