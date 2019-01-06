converting
setFamixParents
	entities valuesDo: [ :anIr |
		(anIr isAnonymous)
		ifFalse: [ anIr setFamixParent ]
	]