converting
defineFamixEntities
	entities valuesDo: [ :anIr |
		(anIr isAnonymous)
		ifFalse: [ famix add: anIr toFamix ]
	].
